package com.smedialink.p031ui.debug;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
import org.fork.utils.Callbacks$Callback;
/* compiled from: DebugView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.debug.DebugView */
/* loaded from: classes3.dex */
public interface DebugView extends BaseView {
    void showConfirmSwitchEnvironmentDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);
}
