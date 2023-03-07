package com.smedialink.services.receivers;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ApplicationLoader;
/* compiled from: BaseStopServiceReceiver.kt */
/* loaded from: classes3.dex */
public abstract class BaseStopServiceReceiver extends BroadcastReceiver {
    private final Class<? extends Service> serviceClass;

    public BaseStopServiceReceiver(Class<? extends Service> serviceClass) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        this.serviceClass = serviceClass;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        context.stopService(new Intent(ApplicationLoader.applicationContext, this.serviceClass));
    }
}
