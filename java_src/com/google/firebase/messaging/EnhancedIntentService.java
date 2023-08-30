package com.google.firebase.messaging;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.WithinAppServiceBinder;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* compiled from: com.google.firebase:firebase-messaging@@23.0.0 */
/* loaded from: classes3.dex */
public abstract class EnhancedIntentService extends Service {
    private Binder binder;
    private int lastStartId;
    final ExecutorService executor = FcmExecutors.newIntentHandleExecutor();
    private final Object lock = new Object();
    private int runningTasks = 0;

    private void finishTask(Intent intent) {
        if (intent != null) {
            WakeLockHolder.completeWakefulIntent(intent);
        }
        synchronized (this.lock) {
            int i = this.runningTasks - 1;
            this.runningTasks = i;
            if (i == 0) {
                stopSelfResultHook(this.lastStartId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task<Void> processIntent(final Intent intent) {
        if (handleIntentOnMainThread(intent)) {
            return Tasks.forResult(null);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.executor.execute(new Runnable() { // from class: com.google.firebase.messaging.EnhancedIntentService$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                EnhancedIntentService.this.m733x624ce8b2(intent, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    protected abstract Intent getStartCommandIntent(Intent intent);

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onStartCommand$1$com-google-firebase-messaging-EnhancedIntentService */
    public /* synthetic */ void m734x83fa35aa(Intent intent, Task task) {
        finishTask(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$processIntent$0$com-google-firebase-messaging-EnhancedIntentService */
    public /* synthetic */ void m733x624ce8b2(Intent intent, TaskCompletionSource taskCompletionSource) {
        try {
            handleIntent(intent);
        } finally {
            taskCompletionSource.setResult(null);
        }
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.binder == null) {
            this.binder = new WithinAppServiceBinder(new WithinAppServiceBinder.IntentHandler() { // from class: com.google.firebase.messaging.EnhancedIntentService.1
                @Override // com.google.firebase.messaging.WithinAppServiceBinder.IntentHandler
                @KeepForSdk
                public Task<Void> handle(Intent intent2) {
                    return EnhancedIntentService.this.processIntent(intent2);
                }
            });
        }
        return this.binder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.executor.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i, int i2) {
        synchronized (this.lock) {
            this.lastStartId = i2;
            this.runningTasks++;
        }
        Intent startCommandIntent = getStartCommandIntent(intent);
        if (startCommandIntent == null) {
            finishTask(intent);
            return 2;
        }
        Task<Void> processIntent = processIntent(startCommandIntent);
        if (processIntent.isComplete()) {
            finishTask(intent);
            return 2;
        }
        processIntent.addOnCompleteListener(new Executor() { // from class: com.google.firebase.messaging.EnhancedIntentService$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                runnable.run();
            }
        }, new OnCompleteListener() { // from class: com.google.firebase.messaging.EnhancedIntentService$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                EnhancedIntentService.this.m734x83fa35aa(intent, task);
            }
        });
        return 3;
    }

    boolean stopSelfResultHook(int i) {
        return stopSelfResult(i);
    }
}
