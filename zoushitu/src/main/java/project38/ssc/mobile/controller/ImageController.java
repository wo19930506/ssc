package project38.ssc.mobile.controller;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project38.api.utils.ApiUtils;
import sun.misc.BASE64Decoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Created by Administrator on 2016/5/28.
 */
@Controller
@RequestMapping(value = "/images")
public class ImageController extends BaseController {
    private Log log = LogFactory.getLog(getClass());

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public void id(@PathVariable Long id, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        OutputStream outputSream = null;
        try {
            if (id == null) {
                return;
            }

            String data = ApiUtils.getImageData(id).getImageData();

            if (StringUtils.isBlank(data)) {
                return;
            }
            BASE64Decoder decoder = new BASE64Decoder();
            byte[] bytes = decoder.decodeBuffer(data);

            httpServletResponse.setContentType("image/jpeg");
            httpServletResponse.setCharacterEncoding("UTF-8");
            outputSream = httpServletResponse.getOutputStream();
            InputStream in = new ByteArrayInputStream(bytes);
            int len = 0;
            byte[] buf = new byte[1024];
            while ((len = in.read(buf, 0, 1024)) != -1) {
                outputSream.write(buf, 0, len);
            }
            outputSream.flush();
            outputSream.close();
        } catch (Exception e) {
            log.error(getClass(), e);
        } finally {
            if (null != outputSream) {
                try {
                    outputSream.close();
                } catch (Exception e) {
                }
            }
        }
    }
}
