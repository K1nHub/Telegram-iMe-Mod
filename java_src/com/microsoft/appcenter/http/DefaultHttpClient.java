package com.microsoft.appcenter.http;

import android.os.AsyncTask;
import com.microsoft.appcenter.http.DefaultHttpClientCallTask;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.utils.AppCenterLog;
import com.microsoft.appcenter.utils.HandlerUtils;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes4.dex */
public class DefaultHttpClient implements HttpClient, DefaultHttpClientCallTask.Tracker {
    private final boolean mCompressionEnabled;
    private final Set<DefaultHttpClientCallTask> mTasks = new HashSet();

    @Override // com.microsoft.appcenter.http.HttpClient
    public void reopen() {
    }

    public DefaultHttpClient(boolean compressionEnabled) {
        this.mCompressionEnabled = compressionEnabled;
    }

    @Override // com.microsoft.appcenter.http.HttpClient
    public ServiceCall callAsync(String url, String method, Map<String, String> headers, HttpClient.CallTemplate callTemplate, final ServiceCallback serviceCallback) {
        final DefaultHttpClientCallTask defaultHttpClientCallTask = new DefaultHttpClientCallTask(url, method, headers, callTemplate, serviceCallback, this, this.mCompressionEnabled);
        try {
            defaultHttpClientCallTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } catch (RejectedExecutionException e) {
            HandlerUtils.runOnUiThread(new Runnable(this) { // from class: com.microsoft.appcenter.http.DefaultHttpClient.1
                @Override // java.lang.Runnable
                public void run() {
                    serviceCallback.onCallFailed(e);
                }
            });
        }
        return new ServiceCall(this) { // from class: com.microsoft.appcenter.http.DefaultHttpClient.2
            @Override // com.microsoft.appcenter.http.ServiceCall
            public void cancel() {
                defaultHttpClientCallTask.cancel(true);
            }
        };
    }

    @Override // com.microsoft.appcenter.http.DefaultHttpClientCallTask.Tracker
    public synchronized void onStart(DefaultHttpClientCallTask task) {
        this.mTasks.add(task);
    }

    @Override // com.microsoft.appcenter.http.DefaultHttpClientCallTask.Tracker
    public synchronized void onFinish(DefaultHttpClientCallTask task) {
        this.mTasks.remove(task);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (this.mTasks.size() > 0) {
            AppCenterLog.debug("AppCenter", "Cancelling " + this.mTasks.size() + " network call(s).");
            for (DefaultHttpClientCallTask defaultHttpClientCallTask : this.mTasks) {
                defaultHttpClientCallTask.cancel(true);
            }
            this.mTasks.clear();
        }
    }
}
