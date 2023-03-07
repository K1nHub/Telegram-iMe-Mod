package com.smedialink.storage.data.utils.system;

import android.app.Activity;
import com.smedialink.storage.domain.model.ObjectHolder;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AndroidActivityHolder.kt */
/* loaded from: classes3.dex */
public final class AndroidActivityHolder implements ObjectHolder<Activity> {
    private final Activity activity;

    public AndroidActivityHolder(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.smedialink.storage.domain.model.ObjectHolder
    public Activity getValue() {
        return this.activity;
    }
}
