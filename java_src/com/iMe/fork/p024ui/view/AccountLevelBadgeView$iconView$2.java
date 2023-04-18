package com.iMe.fork.p024ui.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountLevelBadgeView.kt */
/* renamed from: com.iMe.fork.ui.view.AccountLevelBadgeView$iconView$2 */
/* loaded from: classes3.dex */
public final class AccountLevelBadgeView$iconView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ AccountLevelBadgeView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountLevelBadgeView$iconView$2(AccountLevelBadgeView accountLevelBadgeView) {
        super(0);
        this.this$0 = accountLevelBadgeView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView createIconView;
        createIconView = this.this$0.createIconView();
        return createIconView;
    }
}
