package com.microsoft.appcenter.channel;

import android.content.Context;
import android.os.Handler;
import com.google.android.exoplayer2.C0480C;
import com.microsoft.appcenter.CancellationException;
import com.microsoft.appcenter.channel.Channel;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.http.HttpResponse;
import com.microsoft.appcenter.http.HttpUtils;
import com.microsoft.appcenter.http.ServiceCallback;
import com.microsoft.appcenter.ingestion.AppCenterIngestion;
import com.microsoft.appcenter.ingestion.Ingestion;
import com.microsoft.appcenter.ingestion.models.Device;
import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.LogContainer;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import com.microsoft.appcenter.ingestion.models.one.PartAUtils;
import com.microsoft.appcenter.persistence.DatabasePersistence;
import com.microsoft.appcenter.persistence.Persistence;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.DeviceInfoHelper;
import com.microsoft.appcenter.utils.IdHelper;
import com.microsoft.appcenter.utils.storage.SharedPreferencesManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import p033j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class DefaultChannel implements Channel {
    private final Handler mAppCenterHandler;
    private String mAppSecret;
    private final Context mContext;
    private int mCurrentState;
    private Device mDevice;
    private boolean mDiscardLogs;
    private boolean mEnabled;
    private final Map<String, GroupState> mGroupStates;
    private final Ingestion mIngestion;
    private final Set<Ingestion> mIngestions;
    private final UUID mInstallId;
    private final Collection<Channel.Listener> mListeners;
    private final Persistence mPersistence;

    public DefaultChannel(Context context, String appSecret, LogSerializer logSerializer, HttpClient httpClient, Handler appCenterHandler) {
        this(context, appSecret, buildDefaultPersistence(context, logSerializer), new AppCenterIngestion(httpClient, logSerializer), appCenterHandler);
    }

    DefaultChannel(Context context, String appSecret, Persistence persistence, Ingestion ingestion, Handler appCenterHandler) {
        this.mContext = context;
        this.mAppSecret = appSecret;
        this.mInstallId = IdHelper.getInstallId();
        this.mGroupStates = new ConcurrentHashMap();
        this.mListeners = new LinkedHashSet();
        this.mPersistence = persistence;
        this.mIngestion = ingestion;
        HashSet hashSet = new HashSet();
        this.mIngestions = hashSet;
        hashSet.add(ingestion);
        this.mAppCenterHandler = appCenterHandler;
        this.mEnabled = true;
    }

    private static Persistence buildDefaultPersistence(Context context, LogSerializer logSerializer) {
        DatabasePersistence databasePersistence = new DatabasePersistence(context);
        databasePersistence.setLogSerializer(logSerializer);
        return databasePersistence;
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public boolean setMaxStorageSize(long maxStorageSizeInBytes) {
        return this.mPersistence.setMaxStorageSize(maxStorageSizeInBytes);
    }

    private boolean checkStateDidNotChange(GroupState groupState, int stateSnapshot) {
        return stateSnapshot == this.mCurrentState && groupState == this.mGroupStates.get(groupState.mName);
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public void setAppSecret(String appSecret) {
        this.mAppSecret = appSecret;
        if (this.mEnabled) {
            for (GroupState groupState : this.mGroupStates.values()) {
                if (groupState.mIngestion == this.mIngestion) {
                    checkPendingLogs(groupState);
                }
            }
        }
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public void addGroup(final String groupName, int maxLogsPerBatch, long batchTimeInterval, int maxParallelBatches, Ingestion ingestion, Channel.GroupListener groupListener) {
        AppCenterLog.debug("AppCenter", "addGroup(" + groupName + ")");
        Ingestion ingestion2 = ingestion == null ? this.mIngestion : ingestion;
        this.mIngestions.add(ingestion2);
        GroupState groupState = new GroupState(groupName, maxLogsPerBatch, batchTimeInterval, maxParallelBatches, ingestion2, groupListener);
        this.mGroupStates.put(groupName, groupState);
        groupState.mPendingLogCount = this.mPersistence.countLogs(groupName);
        if (this.mAppSecret != null || this.mIngestion != ingestion2) {
            checkPendingLogs(groupState);
        }
        for (Channel.Listener listener : this.mListeners) {
            listener.onGroupAdded(groupName, groupListener, batchTimeInterval);
        }
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public void removeGroup(String groupName) {
        AppCenterLog.debug("AppCenter", "removeGroup(" + groupName + ")");
        GroupState remove = this.mGroupStates.remove(groupName);
        if (remove != null) {
            cancelTimer(remove);
        }
        for (Channel.Listener listener : this.mListeners) {
            listener.onGroupRemoved(groupName);
        }
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public void setEnabled(boolean enabled) {
        if (this.mEnabled == enabled) {
            return;
        }
        if (enabled) {
            this.mEnabled = true;
            this.mDiscardLogs = false;
            this.mCurrentState++;
            for (Ingestion ingestion : this.mIngestions) {
                ingestion.reopen();
            }
            for (GroupState groupState : this.mGroupStates.values()) {
                checkPendingLogs(groupState);
            }
        } else {
            this.mEnabled = false;
            suspend(true, new CancellationException());
        }
        for (Channel.Listener listener : this.mListeners) {
            listener.onGloballyEnabled(enabled);
        }
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public void setLogUrl(String logUrl) {
        this.mIngestion.setLogUrl(logUrl);
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public void clear(String groupName) {
        if (this.mGroupStates.containsKey(groupName)) {
            AppCenterLog.debug("AppCenter", "clear(" + groupName + ")");
            this.mPersistence.deleteLogs(groupName);
            for (Channel.Listener listener : this.mListeners) {
                listener.onClear(groupName);
            }
        }
    }

    private void suspend(boolean deleteLogs, Exception exception) {
        Channel.GroupListener groupListener;
        this.mDiscardLogs = deleteLogs;
        this.mCurrentState++;
        for (GroupState groupState : this.mGroupStates.values()) {
            cancelTimer(groupState);
            Iterator<Map.Entry<String, List<Log>>> it = groupState.mSendingBatches.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, List<Log>> next = it.next();
                it.remove();
                if (deleteLogs && (groupListener = groupState.mListener) != null) {
                    for (Log log : next.getValue()) {
                        groupListener.onFailure(log, exception);
                    }
                }
            }
        }
        for (Ingestion ingestion : this.mIngestions) {
            try {
                ingestion.close();
            } catch (IOException e) {
                AppCenterLog.error("AppCenter", "Failed to close ingestion: " + ingestion, e);
            }
        }
        if (deleteLogs) {
            for (GroupState groupState2 : this.mGroupStates.values()) {
                deleteLogsOnSuspended(groupState2);
            }
            return;
        }
        this.mPersistence.clearPendingLogState();
    }

    private void deleteLogsOnSuspended(final GroupState groupState) {
        ArrayList<Log> arrayList = new ArrayList();
        this.mPersistence.getLogs(groupState.mName, Collections.emptyList(), 100, arrayList);
        if (arrayList.size() > 0 && groupState.mListener != null) {
            for (Log log : arrayList) {
                groupState.mListener.onBeforeSending(log);
                groupState.mListener.onFailure(log, new CancellationException());
            }
        }
        if (arrayList.size() >= 100 && groupState.mListener != null) {
            deleteLogsOnSuspended(groupState);
        } else {
            this.mPersistence.deleteLogs(groupState.mName);
        }
    }

    void cancelTimer(GroupState groupState) {
        if (groupState.mScheduled) {
            groupState.mScheduled = false;
            this.mAppCenterHandler.removeCallbacks(groupState.mRunnable);
            SharedPreferencesManager.remove("startTimerPrefix." + groupState.mName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void triggerIngestion(final GroupState groupState) {
        if (this.mEnabled) {
            if (!this.mIngestion.isEnabled()) {
                AppCenterLog.debug("AppCenter", "SDK is in offline mode.");
                return;
            }
            int i = groupState.mPendingLogCount;
            int min = Math.min(i, groupState.mMaxLogsPerBatch);
            AppCenterLog.debug("AppCenter", "triggerIngestion(" + groupState.mName + ") pendingLogCount=" + i);
            cancelTimer(groupState);
            if (groupState.mSendingBatches.size() == groupState.mMaxParallelBatches) {
                AppCenterLog.debug("AppCenter", "Already sending " + groupState.mMaxParallelBatches + " batches of analytics data to the server.");
                return;
            }
            ArrayList<Log> arrayList = new ArrayList(min);
            String logs = this.mPersistence.getLogs(groupState.mName, groupState.mPausedTargetKeys, min, arrayList);
            groupState.mPendingLogCount -= min;
            if (logs == null) {
                return;
            }
            AppCenterLog.debug("AppCenter", "ingestLogs(" + groupState.mName + "," + logs + ") pendingLogCount=" + groupState.mPendingLogCount);
            if (groupState.mListener != null) {
                for (Log log : arrayList) {
                    groupState.mListener.onBeforeSending(log);
                }
            }
            groupState.mSendingBatches.put(logs, arrayList);
            sendLogs(groupState, this.mCurrentState, arrayList, logs);
        }
    }

    private void sendLogs(final GroupState groupState, final int currentState, List<Log> batch, final String batchId) {
        LogContainer logContainer = new LogContainer();
        logContainer.setLogs(batch);
        groupState.mIngestion.sendAsync(this.mAppSecret, this.mInstallId, logContainer, new ServiceCallback() { // from class: com.microsoft.appcenter.channel.DefaultChannel.1
            @Override // com.microsoft.appcenter.http.ServiceCallback
            public void onCallSucceeded(HttpResponse httpResponse) {
                DefaultChannel.this.mAppCenterHandler.post(new Runnable() { // from class: com.microsoft.appcenter.channel.DefaultChannel.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C25001 c25001 = C25001.this;
                        DefaultChannel.this.handleSendingSuccess(groupState, batchId);
                    }
                });
            }

            @Override // com.microsoft.appcenter.http.ServiceCallback
            public void onCallFailed(final Exception e) {
                DefaultChannel.this.mAppCenterHandler.post(new Runnable() { // from class: com.microsoft.appcenter.channel.DefaultChannel.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C25001 c25001 = C25001.this;
                        DefaultChannel.this.handleSendingFailure(groupState, batchId, e);
                    }
                });
            }
        });
        this.mAppCenterHandler.post(new Runnable() { // from class: com.microsoft.appcenter.channel.DefaultChannel.2
            @Override // java.lang.Runnable
            public void run() {
                DefaultChannel.this.checkPendingLogsAfterPost(groupState, currentState);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkPendingLogsAfterPost(final GroupState groupState, int currentState) {
        if (checkStateDidNotChange(groupState, currentState)) {
            checkPendingLogs(groupState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSendingSuccess(GroupState groupState, String batchId) {
        List<Log> remove = groupState.mSendingBatches.remove(batchId);
        if (remove != null) {
            this.mPersistence.deleteLogs(groupState.mName, batchId);
            Channel.GroupListener groupListener = groupState.mListener;
            if (groupListener != null) {
                for (Log log : remove) {
                    groupListener.onSuccess(log);
                }
            }
            checkPendingLogs(groupState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSendingFailure(GroupState groupState, String batchId, Exception e) {
        String str = groupState.mName;
        List<Log> remove = groupState.mSendingBatches.remove(batchId);
        if (remove != null) {
            AppCenterLog.error("AppCenter", "Sending logs groupName=" + str + " id=" + batchId + " failed", e);
            boolean isRecoverableError = HttpUtils.isRecoverableError(e);
            if (isRecoverableError) {
                groupState.mPendingLogCount += remove.size();
            } else {
                Channel.GroupListener groupListener = groupState.mListener;
                if (groupListener != null) {
                    for (Log log : remove) {
                        groupListener.onFailure(log, e);
                    }
                }
            }
            this.mEnabled = false;
            suspend(!isRecoverableError, e);
        }
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public void enqueue(Log log, final String groupName, int flags) {
        boolean z;
        GroupState groupState = this.mGroupStates.get(groupName);
        if (groupState == null) {
            AppCenterLog.error("AppCenter", "Invalid group name:" + groupName);
        } else if (this.mDiscardLogs) {
            AppCenterLog.warn("AppCenter", "Channel is disabled, the log is discarded.");
            Channel.GroupListener groupListener = groupState.mListener;
            if (groupListener != null) {
                groupListener.onBeforeSending(log);
                groupState.mListener.onFailure(log, new CancellationException());
            }
        } else {
            for (Channel.Listener listener : this.mListeners) {
                listener.onPreparingLog(log, groupName);
            }
            if (log.getDevice() == null) {
                if (this.mDevice == null) {
                    try {
                        this.mDevice = DeviceInfoHelper.getDeviceInfo(this.mContext);
                    } catch (DeviceInfoHelper.DeviceInfoException e) {
                        AppCenterLog.error("AppCenter", "Device log cannot be generated", e);
                        return;
                    }
                }
                log.setDevice(this.mDevice);
            }
            if (log.getTimestamp() == null) {
                log.setTimestamp(new Date());
            }
            for (Channel.Listener listener2 : this.mListeners) {
                listener2.onPreparedLog(log, groupName, flags);
            }
            loop2: while (true) {
                for (Channel.Listener listener3 : this.mListeners) {
                    z = z || listener3.shouldFilter(log);
                }
            }
            if (z) {
                AppCenterLog.debug("AppCenter", "Log of type '" + log.getType() + "' was filtered out by listener(s)");
            } else if (this.mAppSecret == null && groupState.mIngestion == this.mIngestion) {
                AppCenterLog.debug("AppCenter", "Log of type '" + log.getType() + "' was not filtered out by listener(s) but no app secret was provided. Not persisting/sending the log.");
            } else {
                try {
                    this.mPersistence.putLog(log, groupName, flags);
                    Iterator<String> it = log.getTransmissionTargetTokens().iterator();
                    String targetKey = it.hasNext() ? PartAUtils.getTargetKey(it.next()) : null;
                    if (groupState.mPausedTargetKeys.contains(targetKey)) {
                        AppCenterLog.debug("AppCenter", "Transmission target ikey=" + targetKey + " is paused.");
                        return;
                    }
                    groupState.mPendingLogCount++;
                    AppCenterLog.debug("AppCenter", "enqueue(" + groupState.mName + ") pendingLogCount=" + groupState.mPendingLogCount);
                    if (this.mEnabled) {
                        checkPendingLogs(groupState);
                    } else {
                        AppCenterLog.debug("AppCenter", "Channel is temporarily disabled, log was saved to disk.");
                    }
                } catch (Persistence.PersistenceException e2) {
                    AppCenterLog.error("AppCenter", "Error persisting log", e2);
                    Channel.GroupListener groupListener2 = groupState.mListener;
                    if (groupListener2 != null) {
                        groupListener2.onBeforeSending(log);
                        groupState.mListener.onFailure(log, e2);
                    }
                }
            }
        }
    }

    void checkPendingLogs(GroupState groupState) {
        AppCenterLog.debug("AppCenter", String.format("checkPendingLogs(%s) pendingLogCount=%s batchTimeInterval=%s", groupState.mName, Integer.valueOf(groupState.mPendingLogCount), Long.valueOf(groupState.mBatchTimeInterval)));
        Long resolveTriggerInterval = resolveTriggerInterval(groupState);
        if (resolveTriggerInterval == null || groupState.mPaused) {
            return;
        }
        if (resolveTriggerInterval.longValue() == 0) {
            triggerIngestion(groupState);
        } else if (groupState.mScheduled) {
        } else {
            groupState.mScheduled = true;
            this.mAppCenterHandler.postDelayed(groupState.mRunnable, resolveTriggerInterval.longValue());
        }
    }

    private Long resolveTriggerInterval(GroupState groupState) {
        if (groupState.mBatchTimeInterval > C0480C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
            return resolveCustomTriggerInterval(groupState);
        }
        return resolveDefaultTriggerInterval(groupState);
    }

    private Long resolveCustomTriggerInterval(GroupState groupState) {
        long currentTimeMillis = System.currentTimeMillis();
        long j = SharedPreferencesManager.getLong("startTimerPrefix." + groupState.mName);
        if (groupState.mPendingLogCount <= 0) {
            if (j + groupState.mBatchTimeInterval < currentTimeMillis) {
                SharedPreferencesManager.remove("startTimerPrefix." + groupState.mName);
                AppCenterLog.debug("AppCenter", "The timer for " + groupState.mName + " channel finished.");
                return null;
            }
            return null;
        } else if (j == 0 || j > currentTimeMillis) {
            SharedPreferencesManager.putLong("startTimerPrefix." + groupState.mName, currentTimeMillis);
            AppCenterLog.debug("AppCenter", "The timer value for " + groupState.mName + " has been saved.");
            return Long.valueOf(groupState.mBatchTimeInterval);
        } else {
            return Long.valueOf(Math.max(groupState.mBatchTimeInterval - (currentTimeMillis - j), 0L));
        }
    }

    private Long resolveDefaultTriggerInterval(GroupState groupState) {
        int i = groupState.mPendingLogCount;
        if (i >= groupState.mMaxLogsPerBatch) {
            return 0L;
        }
        if (i > 0) {
            return Long.valueOf(groupState.mBatchTimeInterval);
        }
        return null;
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public void addListener(Channel.Listener listener) {
        this.mListeners.add(listener);
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public void removeListener(Channel.Listener listener) {
        this.mListeners.remove(listener);
    }

    @Override // com.microsoft.appcenter.channel.Channel
    public void shutdown() {
        this.mEnabled = false;
        suspend(false, new CancellationException());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class GroupState {
        final long mBatchTimeInterval;
        final Ingestion mIngestion;
        final Channel.GroupListener mListener;
        final int mMaxLogsPerBatch;
        final int mMaxParallelBatches;
        final String mName;
        boolean mPaused;
        int mPendingLogCount;
        boolean mScheduled;
        final Map<String, List<Log>> mSendingBatches = new HashMap();
        final Collection<String> mPausedTargetKeys = new HashSet();
        final Runnable mRunnable = new Runnable() { // from class: com.microsoft.appcenter.channel.DefaultChannel.GroupState.1
            @Override // java.lang.Runnable
            public void run() {
                GroupState groupState = GroupState.this;
                groupState.mScheduled = false;
                DefaultChannel.this.triggerIngestion(groupState);
            }
        };

        GroupState(String name, int maxLogsPerBatch, long batchTimeInterval, int maxParallelBatches, Ingestion ingestion, Channel.GroupListener listener) {
            this.mName = name;
            this.mMaxLogsPerBatch = maxLogsPerBatch;
            this.mBatchTimeInterval = batchTimeInterval;
            this.mMaxParallelBatches = maxParallelBatches;
            this.mIngestion = ingestion;
            this.mListener = listener;
        }
    }
}
