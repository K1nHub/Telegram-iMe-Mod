package com.iMe.gateway.impl;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.android.material.snackbar.Snackbar;
import com.iMe.storage.domain.gateway.ActionGateway;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.NotificationCenter;
/* compiled from: ActionGatewayImpl.kt */
/* loaded from: classes4.dex */
public final class ActionGatewayImpl implements ActionGateway {
    public ActionGatewayImpl(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.iMe.storage.domain.gateway.ActionGateway
    public void showInfinitySnackBar(Activity activity, String text, String buttonText, final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(buttonText, "buttonText");
        Intrinsics.checkNotNullParameter(action, "action");
        Snackbar make = Snackbar.make(activity.getWindow().getDecorView().findViewById(16908290), text, -2);
        if (buttonText.length() > 0) {
            make.setAction(buttonText, new View.OnClickListener() { // from class: com.iMe.gateway.impl.ActionGatewayImpl$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ActionGatewayImpl.showInfinitySnackBar$lambda$1$lambda$0(Function0.this, view);
                }
            });
        }
        make.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showInfinitySnackBar$lambda$1$lambda$0(Function0 action, View view) {
        Intrinsics.checkNotNullParameter(action, "$action");
        action.invoke();
    }

    @Override // com.iMe.storage.domain.gateway.ActionGateway
    public void finishApplication() {
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeOtherAppActivities, Boolean.TRUE);
    }
}
