package com.smedialink.p031ui.custom.cells;

import android.content.Context;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.view.AccountLevelBadgeView;
/* compiled from: TextDetailWithRankCell.kt */
/* renamed from: com.smedialink.ui.custom.cells.TextDetailWithRankCell$badgeView$2 */
/* loaded from: classes3.dex */
final class TextDetailWithRankCell$badgeView$2 extends Lambda implements Function0<AccountLevelBadgeView> {
    final /* synthetic */ Context $context;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextDetailWithRankCell$badgeView$2(Context context) {
        super(0);
        this.$context = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final AccountLevelBadgeView invoke() {
        return new AccountLevelBadgeView(this.$context, null, 0, 6, null);
    }
}
