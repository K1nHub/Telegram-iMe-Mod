package com.iMe.storage.data.utils.system;

import android.app.Activity;
import com.iMe.storage.domain.model.ObjectHolder;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AndroidActivityHolder.kt */
/* loaded from: classes4.dex */
public final class AndroidActivityHolder implements ObjectHolder<Activity> {
    private final Activity activity;

    public AndroidActivityHolder(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activity = activity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.iMe.storage.domain.model.ObjectHolder
    public Activity getValue() {
        return this.activity;
    }
}
