package project38.api.result;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import project38.api.common.result.CommonResult;

import javax.persistence.Id;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/2/9.
 */
@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class RedPacketListResult extends CommonResult {
    private List<RedPacket> redPacketList;

    public List<RedPacket> getRedPacketList() {
        return redPacketList;
    }

    public void setRedPacketList(List<RedPacket> redPacketList) {
        this.redPacketList = redPacketList;
    }

    public static class RedPacket {
        /**
         * 创建时间
         */
        private Date createTime;
        /**
         * 红包类型
         */
        private Integer type;
        /**
         * 备注
         */
        private String remarks;

        public Date getCreateTime() {
            return createTime;
        }

        public void setCreateTime(Date createTime) {
            this.createTime = createTime;
        }

        public Integer getType() {
            return type;
        }

        public void setType(Integer type) {
            this.type = type;
        }

        public String getRemarks() {
            return remarks;
        }

        public void setRemarks(String remarks) {
            this.remarks = remarks;
        }
    }
}
