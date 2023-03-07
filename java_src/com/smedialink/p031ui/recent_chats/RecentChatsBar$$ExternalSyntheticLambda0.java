package com.smedialink.p031ui.recent_chats;

import com.smedialink.storage.domain.model.HistoryDialogModel;
import java.util.Objects;
import p034j$.util.function.Predicate;
/* renamed from: com.smedialink.ui.recent_chats.RecentChatsBar$$ExternalSyntheticLambda0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class RecentChatsBar$$ExternalSyntheticLambda0 implements Predicate {
    public static final /* synthetic */ RecentChatsBar$$ExternalSyntheticLambda0 INSTANCE = new RecentChatsBar$$ExternalSyntheticLambda0();

    private /* synthetic */ RecentChatsBar$$ExternalSyntheticLambda0() {
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return Predicate.CC.$default$negate(this);
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public final boolean test(Object obj) {
        boolean m1468removeData$lambda0;
        m1468removeData$lambda0 = RecentChatsBar.m1468removeData$lambda0((HistoryDialogModel) obj);
        return m1468removeData$lambda0;
    }
}
