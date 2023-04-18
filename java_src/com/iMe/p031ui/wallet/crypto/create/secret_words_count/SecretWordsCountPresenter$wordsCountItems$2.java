package com.iMe.p031ui.wallet.crypto.create.secret_words_count;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: SecretWordsCountPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountPresenter$wordsCountItems$2 */
/* loaded from: classes3.dex */
final class SecretWordsCountPresenter$wordsCountItems$2 extends Lambda implements Function0<List<Integer>> {
    public static final SecretWordsCountPresenter$wordsCountItems$2 INSTANCE = new SecretWordsCountPresenter$wordsCountItems$2();

    SecretWordsCountPresenter$wordsCountItems$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<Integer> invoke() {
        IntProgression step;
        List<Integer> mutableList;
        step = RangesKt___RangesKt.step(new IntRange(12, 24), 3);
        mutableList = CollectionsKt___CollectionsKt.toMutableList(step);
        return mutableList;
    }
}
