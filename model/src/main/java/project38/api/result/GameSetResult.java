package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

/**
 * Created by java1 on 2017/7/5.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class GameSetResult extends CommonResult {

    //游戏模式  0官方  1快钱
    public String type;

    public String getType() { return type; }

    public void setType(String type) { this.type = type; }
}
