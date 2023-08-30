package com.ihsanbal.logging;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* loaded from: classes4.dex */
public class LoggingInterceptor implements Interceptor {
    private final Builder builder;
    private final boolean isDebug;

    private LoggingInterceptor(Builder builder) {
        this.builder = builder;
        this.isDebug = builder.isDebug;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response build;
        Request request = chain.request();
        HashMap<String, String> headers = this.builder.getHeaders();
        if (headers.size() > 0) {
            Request.Builder newBuilder = request.newBuilder();
            for (String str : headers.keySet()) {
                newBuilder.addHeader(str, headers.get(str));
            }
            request = newBuilder.build();
        }
        HashMap<String, String> httpUrl = this.builder.getHttpUrl();
        if (httpUrl.size() > 0) {
            HttpUrl.Builder newBuilder2 = request.url().newBuilder(request.url().toString());
            for (String str2 : httpUrl.keySet()) {
                newBuilder2.addQueryParameter(str2, httpUrl.get(str2));
            }
            request = request.newBuilder().url(newBuilder2.build()).build();
        }
        Request request2 = request;
        if (!this.isDebug || this.builder.getLevel() == Level.NONE) {
            return chain.proceed(request2);
        }
        RequestBody body = request2.body();
        String subtype = (body == null || body.contentType() == null) ? null : body.contentType().subtype();
        Executor executor = this.builder.executor;
        if (isNotFileRequest(subtype)) {
            if (executor != null) {
                executor.execute(createPrintJsonRequestRunnable(this.builder, request2));
            } else {
                Printer.printJsonRequest(this.builder, request2);
            }
        } else if (executor != null) {
            executor.execute(createFileRequestRunnable(this.builder, request2));
        } else {
            Printer.printFileRequest(this.builder, request2);
        }
        long nanoTime = System.nanoTime();
        if (!this.builder.isMockEnabled) {
            build = chain.proceed(request2);
        } else {
            try {
                TimeUnit.MILLISECONDS.sleep(this.builder.sleepMs);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            build = new Response.Builder().body(ResponseBody.create(MediaType.parse("application/json"), this.builder.listener.getJsonResponse(request2))).request(chain.request()).protocol(Protocol.HTTP_2).message("Mock").code(200).build();
        }
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
        List<String> encodedPathSegments = request2.url().encodedPathSegments();
        String headers2 = build.headers().toString();
        int code = build.code();
        boolean isSuccessful = build.isSuccessful();
        String message = build.message();
        ResponseBody body2 = build.body();
        MediaType contentType = body2.contentType();
        if (!isNotFileRequest(contentType != null ? contentType.subtype() : null)) {
            if (executor != null) {
                executor.execute(createFileResponseRunnable(this.builder, millis, isSuccessful, code, headers2, encodedPathSegments, message));
            } else {
                Printer.printFileResponse(this.builder, millis, isSuccessful, code, headers2, encodedPathSegments, message);
            }
            return build;
        }
        String jsonString = Printer.getJsonString(body2.string());
        String httpUrl2 = build.request().url().toString();
        if (executor != null) {
            executor.execute(createPrintJsonResponseRunnable(this.builder, millis, isSuccessful, code, headers2, jsonString, encodedPathSegments, message, httpUrl2));
        } else {
            Printer.printJsonResponse(this.builder, millis, isSuccessful, code, headers2, jsonString, encodedPathSegments, message, httpUrl2);
        }
        return build.newBuilder().body(ResponseBody.create(contentType, jsonString)).build();
    }

    private boolean isNotFileRequest(String str) {
        return str != null && (str.contains("json") || str.contains("xml") || str.contains("plain") || str.contains("html"));
    }

    private static Runnable createPrintJsonRequestRunnable(final Builder builder, final Request request) {
        return new Runnable() { // from class: com.ihsanbal.logging.LoggingInterceptor.1
            @Override // java.lang.Runnable
            public void run() {
                Printer.printJsonRequest(Builder.this, request);
            }
        };
    }

    private static Runnable createFileRequestRunnable(final Builder builder, final Request request) {
        return new Runnable() { // from class: com.ihsanbal.logging.LoggingInterceptor.2
            @Override // java.lang.Runnable
            public void run() {
                Printer.printFileRequest(Builder.this, request);
            }
        };
    }

    private static Runnable createPrintJsonResponseRunnable(final Builder builder, final long j, final boolean z, final int i, final String str, final String str2, final List<String> list, final String str3, final String str4) {
        return new Runnable() { // from class: com.ihsanbal.logging.LoggingInterceptor.3
            @Override // java.lang.Runnable
            public void run() {
                Printer.printJsonResponse(Builder.this, j, z, i, str, str2, list, str3, str4);
            }
        };
    }

    private static Runnable createFileResponseRunnable(final Builder builder, final long j, final boolean z, final int i, final String str, final List<String> list, final String str2) {
        return new Runnable() { // from class: com.ihsanbal.logging.LoggingInterceptor.4
            @Override // java.lang.Runnable
            public void run() {
                Printer.printFileResponse(Builder.this, j, z, i, str, list, str2);
            }
        };
    }

    /* loaded from: classes4.dex */
    public static class Builder {
        private static String TAG = "LoggingI";
        private Executor executor;
        private boolean isDebug;
        private boolean isMockEnabled;
        private BufferListener listener;
        private Logger logger;
        private String requestTag;
        private String responseTag;
        private long sleepMs;
        private boolean isLogHackEnable = false;
        private int type = 4;
        private Level level = Level.BASIC;
        private final HashMap<String, String> headers = new HashMap<>();
        private final HashMap<String, String> queries = new HashMap<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getType() {
            return this.type;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Level getLevel() {
            return this.level;
        }

        public Builder setLevel(Level level) {
            this.level = level;
            return this;
        }

        HashMap<String, String> getHeaders() {
            return this.headers;
        }

        HashMap<String, String> getHttpUrl() {
            return this.queries;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getTag(boolean z) {
            return z ? TextUtils.isEmpty(this.requestTag) ? TAG : this.requestTag : TextUtils.isEmpty(this.responseTag) ? TAG : this.responseTag;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Logger getLogger() {
            return this.logger;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isLogHackEnable() {
            return this.isLogHackEnable;
        }

        public Builder request(String str) {
            this.requestTag = str;
            return this;
        }

        public Builder response(String str) {
            this.responseTag = str;
            return this;
        }

        public Builder loggable(boolean z) {
            this.isDebug = z;
            return this;
        }

        public Builder log(int i) {
            this.type = i;
            return this;
        }

        public LoggingInterceptor build() {
            return new LoggingInterceptor(this);
        }
    }
}
