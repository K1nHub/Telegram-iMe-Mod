package com.iMe.utils.helper.neurobot;

import android.content.Context;
import com.iMe.fork.controller.NeuroBotsController;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.shop.BotSettingsActivity;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3290R;
import org.telegram.p044ui.LaunchActivity;
/* compiled from: NeuroBotHelper.kt */
/* loaded from: classes4.dex */
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
        DialogUtils.createDialog$default(context, new DialogModel(getResourceManager().getString(C3290R.string.neurobots_enable_dialog_title), getResourceManager().getString(C3290R.string.neurobots_enable_dialog_description), getResourceManager().getString(C3290R.string.common_cancel), getResourceManager().getString(C3290R.string.neurobots_enable_dialog_positive_btn_text)), new Callbacks$Callback() { // from class: com.iMe.utils.helper.neurobot.SmartBotHelper$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                SmartBotHelper.showEnableSmartBotDialog$lambda$0(context);
            }
        }, null, 8, null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showEnableSmartBotDialog$lambda$0(Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        LaunchActivity launchActivity = context instanceof LaunchActivity ? (LaunchActivity) context : null;
        if (launchActivity != null) {
            launchActivity.lambda$runLinkRequest$82(new BotSettingsActivity());
        }
    }

    static {
        Lazy lazy;
        SmartBotHelper smartBotHelper = new SmartBotHelper();
        INSTANCE = smartBotHelper;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new SmartBotHelper$special$$inlined$inject$default$1(smartBotHelper, null, null));
        resourceManager$delegate = lazy;
    }
}
