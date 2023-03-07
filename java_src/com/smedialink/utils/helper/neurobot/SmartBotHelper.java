package com.smedialink.utils.helper.neurobot;

import android.content.Context;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.shop.BotSettingsActivity;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.dialogs.DialogUtils;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.NeuroBotsController;
import org.fork.utils.Callbacks$Callback;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.C3158R;
import org.telegram.p048ui.LaunchActivity;
/* compiled from: NeuroBotHelper.kt */
/* loaded from: classes3.dex */
public final class SmartBotHelper implements KoinComponent {
    public static final SmartBotHelper INSTANCE;
    private static final Lazy resourceManager$delegate;

    private SmartBotHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) resourceManager$delegate.getValue();
    }

    public static final void runSafeSmartBotAction(int i, Context context, Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(action, "action");
        if (NeuroBotsController.Companion.getInstance(i).isNeuroBotsEnabled()) {
            action.invoke();
        } else {
            INSTANCE.showEnableSmartBotDialog(context);
        }
    }

    private final void showEnableSmartBotDialog(final Context context) {
        DialogUtils.createDialog$default(context, new DialogModel(getResourceManager().getString(C3158R.string.neurobots_enable_dialog_title), getResourceManager().getString(C3158R.string.neurobots_enable_dialog_description), getResourceManager().getString(C3158R.string.common_cancel), getResourceManager().getString(C3158R.string.neurobots_enable_dialog_positive_btn_text)), new Callbacks$Callback() { // from class: com.smedialink.utils.helper.neurobot.SmartBotHelper$$ExternalSyntheticLambda0
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                SmartBotHelper.m1848showEnableSmartBotDialog$lambda0(context);
            }
        }, null, 8, null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showEnableSmartBotDialog$lambda-0  reason: not valid java name */
    public static final void m1848showEnableSmartBotDialog$lambda0(Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        LaunchActivity launchActivity = context instanceof LaunchActivity ? (LaunchActivity) context : null;
        if (launchActivity == null) {
            return;
        }
        launchActivity.lambda$runLinkRequest$80(new BotSettingsActivity());
    }

    static {
        Lazy lazy;
        SmartBotHelper smartBotHelper = new SmartBotHelper();
        INSTANCE = smartBotHelper;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new SmartBotHelper$special$$inlined$inject$default$1(smartBotHelper, null, null));
        resourceManager$delegate = lazy;
    }
}
