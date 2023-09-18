package com.google.firebase.firestore.util;

import android.os.AsyncTask;
import androidx.profileinstaller.ProfileInstallReceiver$$ExternalSyntheticLambda0;
import com.google.android.gms.tasks.TaskExecutors;
import java.util.concurrent.Executor;
/* loaded from: classes4.dex */
public final class Executors {
    public static final Executor DEFAULT_CALLBACK_EXECUTOR = TaskExecutors.MAIN_THREAD;
    public static final Executor DIRECT_EXECUTOR = ProfileInstallReceiver$$ExternalSyntheticLambda0.INSTANCE;
    public static final Executor BACKGROUND_EXECUTOR = new ThrottledForwardingExecutor(4, AsyncTask.THREAD_POOL_EXECUTOR);
}
