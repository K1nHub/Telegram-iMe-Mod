package com.microsoft.appcenter.http;

import android.os.Handler;
import android.os.Looper;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.utils.AppCenterLog;
import java.net.UnknownHostException;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class HttpClientRetryer extends HttpClientDecorator {
    static final long[] RETRY_INTERVALS;
    private final Handler mHandler;
    private final Random mRandom;

    static {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        RETRY_INTERVALS = new long[]{TimeUnit.SECONDS.toMillis(10L), timeUnit.toMillis(5L), timeUnit.toMillis(20L)};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HttpClientRetryer(HttpClient decoratedApi) {
        this(decoratedApi, new Handler(Looper.getMainLooper()));
    }

    HttpClientRetryer(HttpClient decoratedApi, Handler handler) {
        super(decoratedApi);
        this.mRandom = new Random();
        this.mHandler = handler;
    }

    @Override // com.microsoft.appcenter.http.HttpClient
    public ServiceCall callAsync(String url, String method, Map<String, String> headers, HttpClient.CallTemplate callTemplate, ServiceCallback serviceCallback) {
        RetryableCall retryableCall = new RetryableCall(this.mDecoratedApi, url, method, headers, callTemplate, serviceCallback);
        retryableCall.run();
        return retryableCall;
    }

    /* loaded from: classes4.dex */
    private class RetryableCall extends HttpClientCallDecorator {
        private int mRetryCount;

        RetryableCall(HttpClient decoratedApi, String url, String method, Map<String, String> headers, HttpClient.CallTemplate callTemplate, ServiceCallback serviceCallback) {
            super(decoratedApi, url, method, headers, callTemplate, serviceCallback);
        }

        @Override // com.microsoft.appcenter.http.HttpClientCallDecorator, com.microsoft.appcenter.http.ServiceCall
        public synchronized void cancel() {
            HttpClientRetryer.this.mHandler.removeCallbacks(this);
            super.cancel();
        }

        @Override // com.microsoft.appcenter.http.HttpClientCallDecorator, com.microsoft.appcenter.http.ServiceCallback
        public void onCallFailed(Exception e) {
            long j;
            String str;
            int i = this.mRetryCount;
            long[] jArr = HttpClientRetryer.RETRY_INTERVALS;
            if (i < jArr.length && HttpUtils.isRecoverableError(e)) {
                long parseLong = (!(e instanceof HttpException) || (str = ((HttpException) e).getHttpResponse().getHeaders().get("x-ms-retry-after-ms")) == null) ? 0L : Long.parseLong(str);
                if (parseLong == 0) {
                    int i2 = this.mRetryCount;
                    this.mRetryCount = i2 + 1;
                    parseLong = (jArr[i2] / 2) + HttpClientRetryer.this.mRandom.nextInt((int) j);
                }
                String str2 = "Try #" + this.mRetryCount + " failed and will be retried in " + parseLong + " ms";
                if (e instanceof UnknownHostException) {
                    str2 = str2 + " (UnknownHostException)";
                }
                AppCenterLog.warn("AppCenter", str2, e);
                HttpClientRetryer.this.mHandler.postDelayed(this, parseLong);
                return;
            }
            this.mServiceCallback.onCallFailed(e);
        }
    }
}
