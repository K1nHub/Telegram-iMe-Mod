package org.fork.p046ui.view;

import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountLevelBadgeView.kt */
/* renamed from: org.fork.ui.view.AccountLevelBadgeView$nameTextView$2 */
/* loaded from: classes4.dex */
public final class AccountLevelBadgeView$nameTextView$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ AccountLevelBadgeView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountLevelBadgeView$nameTextView$2(AccountLevelBadgeView accountLevelBadgeView) {
        super(0);
        this.this$0 = accountLevelBadgeView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        TextView createNameTextView;
        createNameTextView = this.this$0.createNameTextView();
        return createNameTextView;
    }
}
