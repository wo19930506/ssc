package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;
import java.util.Date;

/**
 * Created by Administrator on 2016/11/15.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ServerTimeResult extends CommonResult {
    private Date serverTime;

    public Date getServerTime() {
        return serverTime;
    }

    public void setServerTime(Date serverTime) {
        this.serverTime = serverTime;
    }
}
