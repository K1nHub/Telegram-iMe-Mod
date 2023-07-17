package com.microsoft.appcenter.persistence;

import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.json.LogSerializer;
import java.io.Closeable;
import java.util.Collection;
import java.util.List;
/* loaded from: classes4.dex */
public abstract class Persistence implements Closeable {
    private LogSerializer mLogSerializer;

    public abstract void clearPendingLogState();

    public abstract int countLogs(String group);

    public abstract void deleteLogs(String group);

    public abstract void deleteLogs(String group, String batchId);

    public abstract String getLogs(String group, Collection<String> pausedTargetKeys, int limit, List<Log> outLogs);

    public abstract long putLog(Log log, String group, int flags) throws PersistenceException;

    public abstract boolean setMaxStorageSize(long maxStorageSizeInBytes);

    /* JADX INFO: Access modifiers changed from: package-private */
    public LogSerializer getLogSerializer() {
        LogSerializer logSerializer = this.mLogSerializer;
        if (logSerializer != null) {
            return logSerializer;
        }
        throw new IllegalStateException("logSerializer not configured");
    }

    public void setLogSerializer(LogSerializer logSerializer) {
        this.mLogSerializer = logSerializer;
    }

    /* loaded from: classes4.dex */
    public static class PersistenceException extends Exception {
        public PersistenceException(String detailMessage, Throwable throwable) {
            super(detailMessage, throwable);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public PersistenceException(String detailMessage) {
            super(detailMessage);
        }
    }
}
