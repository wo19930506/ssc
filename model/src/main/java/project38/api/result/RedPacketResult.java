package project38.api.result;

import project38.api.common.result.CommonResult;

/**
 * Created by Administrator on 2017/2/9.
 */
public class RedPacketResult extends CommonResult {
    private Integer type;

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}