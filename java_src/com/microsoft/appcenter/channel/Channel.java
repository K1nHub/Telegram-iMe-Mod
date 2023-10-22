package com.microsoft.appcenter.channel;

import com.microsoft.appcenter.ingestion.Ingestion;
import com.microsoft.appcenter.ingestion.models.Log;
/* loaded from: classes4.dex */
public interface Channel {

    /* loaded from: classes4.dex */
    public interface GroupListener {
        void onBeforeSending(Log log);

        void onFailure(Log log, Exception e);

        void onSuccess(Log log);
    }

    /* loaded from: classes4.dex */
    public interface Listener {
        void onClear(String groupName);

        void onGloballyEnabled(boolean isEnabled);

        void onGroupAdded(String groupName, GroupListener groupListener, long batchTimeInterval);

        void onGroupRemoved(String groupName);

        void onPreparedLog(Log log, String groupName, int flags);

        void onPreparingLog(Log log, String groupName);

        boolean shouldFilter(Log log);
    }

    void addGroup(String groupName, int maxLogsPerBatch, long batchTimeInterval, int maxParallelBatches, Ingestion ingestion, GroupListener groupListener);

    void addListener(Listener listener);

    void clear(String groupName);

    void enqueue(Log log, String groupName, int flags);

    void removeGroup(String groupName);

    void removeListener(Listener listener);

    void setAppSecret(String appSecret);

    void setEnabled(boolean enabled);

    void setLogUrl(String logUrl);

    boolean setMaxStorageSize(long maxStorageSizeInBytes);

    void shutdown();
}
