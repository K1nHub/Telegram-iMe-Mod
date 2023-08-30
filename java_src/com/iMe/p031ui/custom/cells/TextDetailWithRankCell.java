package com.iMe.p031ui.custom.cells;

import android.content.Context;
import android.view.View;
import com.iMe.fork.p024ui.view.AccountLevelBadgeView;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.Cells.TextDetailCell;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: TextDetailWithRankCell.kt */
/* renamed from: com.iMe.ui.custom.cells.TextDetailWithRankCell */
/* loaded from: classes3.dex */
public final class TextDetailWithRankCell extends TextDetailCell {
    private final Lazy badgeView$delegate;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextDetailWithRankCell(final Context context) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AccountLevelBadgeView>() { // from class: com.iMe.ui.custom.cells.TextDetailWithRankCell$badgeView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AccountLevelBadgeView invoke() {
                return new AccountLevelBadgeView(context, null, 0, 6, null);
            }
        });
        this.badgeView$delegate = lazy;
        addView(getBadgeView(), LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 3 : 5) | 16, 23, 0, 23, 0));
    }

    private final AccountLevelBadgeView getBadgeView() {
        return (AccountLevelBadgeView) this.badgeView$delegate.getValue();
    }

    public final void setBadgeClickListener(View.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        getBadgeView().setOnClickListener(listener);
    }

    public final void setAccountLevel(AccountLevel level) {
        Intrinsics.checkNotNullParameter(level, "level");
        getBadgeView().setAccountLevel(level);
    }

    /* compiled from: TextDetailWithRankCell.kt */
    /* renamed from: com.iMe.ui.custom.cells.TextDetailWithRankCell$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
