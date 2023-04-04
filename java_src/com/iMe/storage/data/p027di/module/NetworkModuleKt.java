package com.iMe.storage.data.p027di.module;

import com.facebook.flipper.plugins.network.FlipperOkhttpInterceptor;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.iMe.storage.data.manager.FlipperManager;
import com.ihsanbal.logging.Level;
import com.ihsanbal.logging.LoggingInterceptor;
import java.io.File;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import org.koin.android.ext.koin.ModuleExtKt;
import org.koin.core.module.Module;
import org.koin.core.qualifier.QualifierKt;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;
import org.koin.dsl.ModuleDSLKt;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
/* compiled from: NetworkModule.kt */
/* renamed from: com.iMe.storage.data.di.module.NetworkModuleKt */
/* loaded from: classes3.dex */
public final class NetworkModuleKt {
    private static final StringQualifier LOGGING_INTERCEPTOR = QualifierKt.named("LOGGING_INTERCEPTOR");
    private static final StringQualifier METADATA_INTERCEPTOR = QualifierKt.named("METADATA_INTERCEPTOR");
    private static final StringQualifier DURATION_ANALYTIC_INTERCEPTOR = QualifierKt.named("DURATION_ANALYTIC_INTERCEPTOR");
    private static final StringQualifier ERROR_INTERCEPTOR = QualifierKt.named("ERROR_INTERCEPTOR");
    private static final StringQualifier DEFAULT_CLIENT = QualifierKt.named("DEFAULT_CLIENT");
    private static final StringQualifier SERVER_CLIENT = QualifierKt.named("MAIN_CLIENT");
    private static final StringQualifier TON_CONFIG_CLIENT = QualifierKt.named("TON_CONFIG_CLIENT");
    private static final StringQualifier GOOGLE_RETROFIT = QualifierKt.named("GOOGLE_RETROFIT");
    private static final StringQualifier KIKLIKO_RETROFIT = QualifierKt.named("KIKLIKO_RETROFIT");
    private static final StringQualifier SERVER_RETROFIT = QualifierKt.named("SERVER_RETROFIT");
    private static final Module networkModule = ModuleDSLKt.module$default(false, NetworkModuleKt$networkModule$1.INSTANCE, 1, null);

    public static final StringQualifier getLOGGING_INTERCEPTOR() {
        return LOGGING_INTERCEPTOR;
    }

    public static final StringQualifier getMETADATA_INTERCEPTOR() {
        return METADATA_INTERCEPTOR;
    }

    public static final StringQualifier getDURATION_ANALYTIC_INTERCEPTOR() {
        return DURATION_ANALYTIC_INTERCEPTOR;
    }

    public static final StringQualifier getERROR_INTERCEPTOR() {
        return ERROR_INTERCEPTOR;
    }

    public static final StringQualifier getDEFAULT_CLIENT() {
        return DEFAULT_CLIENT;
    }

    public static final StringQualifier getSERVER_CLIENT() {
        return SERVER_CLIENT;
    }

    public static final StringQualifier getTON_CONFIG_CLIENT() {
        return TON_CONFIG_CLIENT;
    }

    public static final StringQualifier getGOOGLE_RETROFIT() {
        return GOOGLE_RETROFIT;
    }

    public static final StringQualifier getKIKLIKO_RETROFIT() {
        return KIKLIKO_RETROFIT;
    }

    public static final StringQualifier getSERVER_RETROFIT() {
        return SERVER_RETROFIT;
    }

    public static final Module getNetworkModule() {
        return networkModule;
    }

    public static final Retrofit createRetrofit(OkHttpClient okHttpClient, String url, Gson gson) {
        Intrinsics.checkNotNullParameter(okHttpClient, "okHttpClient");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Retrofit build = new Retrofit.Builder().baseUrl(url).client(okHttpClient).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).addConverterFactory(GsonConverterFactory.create(gson)).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
        return build;
    }

    public static final OkHttpClient createOkHttpClient(Cache cache, Interceptor... interceptors) {
        Intrinsics.checkNotNullParameter(cache, "cache");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        OkHttpClient.Builder cache2 = new OkHttpClient.Builder().cache(cache);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder writeTimeout = cache2.readTimeout(30L, timeUnit).writeTimeout(30L, timeUnit);
        for (Interceptor interceptor : interceptors) {
            writeTimeout.addInterceptor(interceptor);
        }
        if (FlipperManager.isFlipperEnabled()) {
            writeTimeout.addInterceptor(new FlipperOkhttpInterceptor(FlipperManager.INSTANCE.getNetworkFlipperPlugin()));
        }
        return writeTimeout.build();
    }

    public static final OkHttpClient createTonConfigOkHttpClient() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return builder.readTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Cache createCache(Scope scope) {
        return new Cache(new File(ModuleExtKt.androidContext(scope).getCacheDir(), "httpcache"), 209715200);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson createGson() {
        Gson create = new GsonBuilder().setPrettyPrinting().enableComplexMapKeySerialization().create();
        Intrinsics.checkNotNullExpressionValue(create, "GsonBuilder()\n          …                .create()");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LoggingInterceptor createLoggingInterceptor() {
        LoggingInterceptor build = new LoggingInterceptor.Builder().loggable(false).setLevel(Level.BASIC).log(4).request("Request").response("Response").build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …\n                .build()");
        return build;
    }
}
