package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.WithinAppServiceConnection;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-messaging@@23.0.0 */
/* loaded from: classes3.dex */
public class WithinAppServiceBinder extends Binder {
    private final IntentHandler intentHandler;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.firebase:firebase-messaging@@23.0.0 */
    /* loaded from: classes3.dex */
    public interface IntentHandler {
        Task<Void> handle(Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WithinAppServiceBinder(IntentHandler intentHandler) {
        this.intentHandler = intentHandler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void send(final WithinAppServiceConnection.BindRequest bindRequest) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "service received new intent via bind strategy");
        }
        this.intentHandler.handle(bindRequest.intent).addOnCompleteListener(WithinAppServiceBinder$$ExternalSyntheticLambda1.INSTANCE, new OnCompleteListener() { // from class: com.google.firebase.messaging.WithinAppServiceBinder$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                WithinAppServiceConnection.BindRequest.this.finish();
            }
        });
    }
}
