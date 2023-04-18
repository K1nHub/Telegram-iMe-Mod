package com.iMe.fork.p024ui.fragment;

import java.util.Comparator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MusicActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.MusicActivity$musicCountComparator$2 */
/* loaded from: classes3.dex */
public final class MusicActivity$musicCountComparator$2 extends Lambda implements Function0<Comparator<Long>> {
    final /* synthetic */ MusicActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MusicActivity$musicCountComparator$2(MusicActivity musicActivity) {
        super(0);
        this.this$0 = musicActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int invoke$lambda$0(MusicActivity this$0, long j, long j2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int intValue = ((Number) this$0.countsMap.get(j)).intValue();
        Object obj = this$0.countsMap.get(j2);
        Intrinsics.checkNotNullExpressionValue(obj, "countsMap[did2]");
        return intValue - ((Number) obj).intValue();
    }

    @Override // kotlin.jvm.functions.Function0
    public final Comparator<Long> invoke() {
        final MusicActivity musicActivity = this.this$0;
        return new Comparator() { // from class: com.iMe.fork.ui.fragment.MusicActivity$musicCountComparator$2$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int invoke$lambda$0;
                invoke$lambda$0 = MusicActivity$musicCountComparator$2.invoke$lambda$0(MusicActivity.this, ((Long) obj).longValue(), ((Long) obj2).longValue());
                return invoke$lambda$0;
            }
        };
    }
}
