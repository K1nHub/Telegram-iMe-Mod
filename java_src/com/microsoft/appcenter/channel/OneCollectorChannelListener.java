package com.microsoft.appcenter.channel;

import com.microsoft.appcenter.channel.Channel;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.ingestion.Ingestion;
import com.microsoft.appcenter.ingestion.OneCollectorIngestion;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import com.microsoft.appcenter.ingestion.models.one.CommonSchemaLog;
import com.microsoft.appcenter.ingestion.models.one.SdkExtension;
import com.microsoft.appcenter.utils.AppCenterLog;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes4.dex */
public class OneCollectorChannelListener extends AbstractChannelListener {
    private final Channel mChannel;
    private final Map<String, EpochAndSeq> mEpochsAndSeqsByIKey;
    private final Ingestion mIngestion;
    private final UUID mInstallId;
    private final LogSerializer mLogSerializer;

    public OneCollectorChannelListener(Channel channel, LogSerializer logSerializer, HttpClient httpClient, UUID installId) {
        this(new OneCollectorIngestion(httpClient, logSerializer), channel, logSerializer, installId);
    }

    OneCollectorChannelListener(OneCollectorIngestion ingestion, Channel channel, LogSerializer logSerializer, UUID installId) {
        this.mEpochsAndSeqsByIKey = new HashMap();
        this.mChannel = channel;
        this.mLogSerializer = logSerializer;
        this.mInstallId = installId;
        this.mIngestion = ingestion;
    }

    public void setLogUrl(String logUrl) {
        this.mIngestion.setLogUrl(logUrl);
    }

    @Override // com.microsoft.appcenter.channel.AbstractChannelListener, com.microsoft.appcenter.channel.Channel.Listener
    public void onGroupAdded(String groupName, Channel.GroupListener groupListener, long batchTimeInterval) {
        if (isOneCollectorGroup(groupName)) {
            return;
        }
        this.mChannel.addGroup(getOneCollectorGroupName(groupName), 50, batchTimeInterval, 2, this.mIngestion, groupListener);
    }

    @Override // com.microsoft.appcenter.channel.AbstractChannelListener, com.microsoft.appcenter.channel.Channel.Listener
    public void onGroupRemoved(String groupName) {
        if (isOneCollectorGroup(groupName)) {
            return;
        }
        this.mChannel.removeGroup(getOneCollectorGroupName(groupName));
    }

    @Override // com.microsoft.appcenter.channel.AbstractChannelListener, com.microsoft.appcenter.channel.Channel.Listener
    public void onPreparedLog(Log log, String groupName, int flags) {
        if (isOneCollectorCompatible(log)) {
            try {
                Collection<CommonSchemaLog> commonSchemaLog = this.mLogSerializer.toCommonSchemaLog(log);
                for (CommonSchemaLog commonSchemaLog2 : commonSchemaLog) {
                    commonSchemaLog2.setFlags(Long.valueOf(flags));
                    EpochAndSeq epochAndSeq = this.mEpochsAndSeqsByIKey.get(commonSchemaLog2.getIKey());
                    if (epochAndSeq == null) {
                        epochAndSeq = new EpochAndSeq(UUID.randomUUID().toString());
                        this.mEpochsAndSeqsByIKey.put(commonSchemaLog2.getIKey(), epochAndSeq);
                    }
                    SdkExtension sdk = commonSchemaLog2.getExt().getSdk();
                    sdk.setEpoch(epochAndSeq.epoch);
                    long j = epochAndSeq.seq + 1;
                    epochAndSeq.seq = j;
                    sdk.setSeq(Long.valueOf(j));
                    sdk.setInstallId(this.mInstallId);
                }
                String oneCollectorGroupName = getOneCollectorGroupName(groupName);
                for (CommonSchemaLog commonSchemaLog3 : commonSchemaLog) {
                    this.mChannel.enqueue(commonSchemaLog3, oneCollectorGroupName, flags);
                }
            } catch (IllegalArgumentException e) {
                AppCenterLog.error("AppCenter", "Cannot send a log to one collector: " + e.getMessage());
            }
        }
    }

    @Override // com.microsoft.appcenter.channel.AbstractChannelListener, com.microsoft.appcenter.channel.Channel.Listener
    public boolean shouldFilter(Log log) {
        return isOneCollectorCompatible(log);
    }

    private static String getOneCollectorGroupName(String groupName) {
        return groupName + "/one";
    }

    @Override // com.microsoft.appcenter.channel.AbstractChannelListener, com.microsoft.appcenter.channel.Channel.Listener
    public void onClear(String groupName) {
        if (isOneCollectorGroup(groupName)) {
            return;
        }
        this.mChannel.clear(getOneCollectorGroupName(groupName));
    }

    private static boolean isOneCollectorGroup(String groupName) {
        return groupName.endsWith("/one");
    }

    private static boolean isOneCollectorCompatible(Log log) {
        return ((log instanceof CommonSchemaLog) || log.getTransmissionTargetTokens().isEmpty()) ? false : true;
    }

    @Override // com.microsoft.appcenter.channel.AbstractChannelListener, com.microsoft.appcenter.channel.Channel.Listener
    public void onGloballyEnabled(boolean isEnabled) {
        if (isEnabled) {
            return;
        }
        this.mEpochsAndSeqsByIKey.clear();
    }

    /* loaded from: classes4.dex */
    private static class EpochAndSeq {
        final String epoch;
        long seq;

        EpochAndSeq(String epoch) {
            this.epoch = epoch;
        }
    }
}
