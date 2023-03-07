package com.google.firebase.firestore.util;

import android.os.AsyncTask;
import com.google.android.exoplayer2.offline.DefaultDownloaderFactory$$ExternalSyntheticLambda0;
import com.google.android.gms.tasks.TaskExecutors;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
public final class Executors {
    public static final Executor DEFAULT_CALLBACK_EXECUTOR = TaskExecutors.MAIN_THREAD;
    public static final Executor DIRECT_EXECUTOR = DefaultDownloaderFactory$$ExternalSyntheticLambda0.INSTANCE;
    public static final Executor BACKGROUND_EXECUTOR = new ThrottledForwardingExecutor(4, AsyncTask.THREAD_POOL_EXECUTOR);
}
