package com.iMe.storage.domain.gateway;

import android.app.Activity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
/* compiled from: ActionGateway.kt */
/* loaded from: classes3.dex */
public interface ActionGateway {
    void finishApplication();

    void showInfinitySnackBar(Activity activity, String str, String str2, Function0<Unit> function0);
}
