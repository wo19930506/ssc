package project38.api.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import project38.api.common.result.CommonResult;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/11/16.
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class SscTimeResult2 extends CommonResult {
    private List<SscTime> sscTimeList;

    public List<SscTime> getSscTimeList() {
        return sscTimeList;
    }

    public void setSscTimeList(List<SscTime> sscTimeList) {
        this.sscTimeList = sscTimeList;
    }

    public static class SscTime {
        /**
         * 彩种编码
         */
        private Long playGroupId;

        /**
         * 剩余时间
         */
        private Long leftTime;

        /**
         * 本期期数
         */
        private String number;

        /**
         * 上期期数
         */
        private String lastOpenNumber;

        /**
         * 上期开奖时间
         */
        private Date lastOpenTime;

        /**
         * 上期开奖号码
         */
        private String lastOpenData;
        /**
         * 彩种是否关闭
         */
        private Boolean isEnable;

        public Long getPlayGroupId() {
            return playGroupId;
        }

        public void setPlayGroupId(Long playGroupId) {
            this.playGroupId = playGroupId;
        }

        public Long getLeftTime() {
            return leftTime;
        }

        public void setLeftTime(Long leftTime) {
            this.leftTime = leftTime;
        }

        public String getNumber() {
            return number;
        }

        public void setNumber(String number) {
            this.number = number;
        }

        public String getLastOpenNumber() {
            return lastOpenNumber;
        }

        public void setLastOpenNumber(String lastOpenNumber) {
            this.lastOpenNumber = lastOpenNumber;
        }

        public Date getLastOpenTime() {
            return lastOpenTime;
        }

        public void setLastOpenTime(Date lastOpenTime) {
            this.lastOpenTime = lastOpenTime;
        }

        public String getLastOpenData() {
            return lastOpenData;
        }

        public void setLastOpenData(String lastOpenData) {
            this.lastOpenData = lastOpenData;
        }

        public Boolean getEnable() {
            return isEnable;
        }

        public void setEnable(Boolean enable) {
            isEnable = enable;
        }
    }
}
