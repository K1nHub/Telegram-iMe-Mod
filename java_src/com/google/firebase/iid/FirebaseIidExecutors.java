package com.google.firebase.iid;

import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.firebase:firebase-iid@@21.1.0 */
/* loaded from: classes3.dex */
class FirebaseIidExecutors {
    private static final Executor DIRECT_EXECUTOR = FirebaseIidExecutors$$Lambda$0.$instance;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor directExecutor() {
        return DIRECT_EXECUTOR;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService newCachedSingleThreadExecutor() {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("firebase-iid-executor"));
    }
}
