package com.iMe.p031ui.debug;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: DebugView.kt */
@OneExecution
/* renamed from: com.iMe.ui.debug.DebugView */
/* loaded from: classes4.dex */
public interface DebugView extends BaseView {
    void showConfirmSwitchEnvironmentDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);
}
