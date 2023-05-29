package com.iMe.manager.wallet;

import com.iMe.model.wallet.transaction.ClickableItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletLinkClickableManager.kt */
/* loaded from: classes3.dex */
public final class WalletLinkClickableManager$setupClickableLink$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ String $clickableText;
    final /* synthetic */ WalletLinkClickableManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletLinkClickableManager$setupClickableLink$1(WalletLinkClickableManager walletLinkClickableManager, String str) {
        super(0);
        this.this$0 = walletLinkClickableManager;
        this.$clickableText = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WalletLinkClickableManager.kt */
    /* renamed from: com.iMe.manager.wallet.WalletLinkClickableManager$setupClickableLink$1$1 */
    /* loaded from: classes3.dex */
    public static final class C15941 extends Lambda implements Function1<Integer, Unit> {
        final /* synthetic */ WalletLinkClickableManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C15941(WalletLinkClickableManager walletLinkClickableManager) {
            super(1);
            this.this$0 = walletLinkClickableManager;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            invoke(num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(int i) {
            this.this$0.resolveIndexOfAlertAction(i);
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        WalletLinkClickableView walletLinkClickableView;
        ClickableItem clickableItem;
        String[] alertOptionsByType;
        walletLinkClickableView = this.this$0.viewState;
        if (walletLinkClickableView != null) {
            WalletLinkClickableManager walletLinkClickableManager = this.this$0;
            String str = this.$clickableText;
            clickableItem = walletLinkClickableManager.clickableItem;
            alertOptionsByType = walletLinkClickableManager.getAlertOptionsByType(str, clickableItem.getLinkedTextType());
            walletLinkClickableView.showClickableTextDialog(alertOptionsByType, new C15941(this.this$0));
        }
    }
}
