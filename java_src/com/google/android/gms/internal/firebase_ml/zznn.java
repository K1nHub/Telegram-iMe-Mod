package com.google.android.gms.internal.firebase_ml;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.p021ml.common.FirebaseMLException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class zznn implements Handler.Callback {
    private static final Object lock = new Object();
    private static zznn zzasv;
    private Handler handler;

    public static Executor zzlj() {
        return zznp.zzasw;
    }

    public static zznn zzlk() {
        zznn zznnVar;
        synchronized (lock) {
            if (zzasv == null) {
                HandlerThread handlerThread = new HandlerThread("FirebaseMLHandler", 9);
                handlerThread.start();
                zzasv = new zznn(handlerThread.getLooper());
            }
            zznnVar = zzasv;
        }
        return zznnVar;
    }

    private zznn(Looper looper) {
        this.handler = new zzf(looper, this);
    }

    public final <ResultT> Task<ResultT> zza(Callable<ResultT> callable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.handler.post(new zznq(this, callable, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    public final <ResultT> void zza(Callable<ResultT> callable, long j) {
        Handler handler = this.handler;
        handler.sendMessageDelayed(handler.obtainMessage(1, callable), j);
    }

    public final <ResultT> void zzb(Callable<ResultT> callable) {
        this.handler.removeMessages(1, callable);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 1) {
            try {
                ((Callable) message.obj).call();
            } catch (Exception unused) {
                Log.e("MLTaskExecutor", "Exception when executing the delayed Callable");
            }
        }
        return true;
    }

    public static <ResultT> void zza(Callable<ResultT> callable, TaskCompletionSource<ResultT> taskCompletionSource) {
        try {
            taskCompletionSource.setResult(callable.call());
        } catch (FirebaseMLException e) {
            taskCompletionSource.setException(e);
        } catch (Exception e2) {
            taskCompletionSource.setException(new FirebaseMLException("Internal error has occurred when executing Firebase ML tasks", 13, e2));
        }
    }

    public final Handler getHandler() {
        return this.handler;
    }
}
