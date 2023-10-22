package com.iMe.p030ui.wallet.crypto.create.secret_words_count;

import com.iMe.p030ui.base.mvp.base.BasePresenter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
/* compiled from: SecretWordsCountPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountPresenter */
/* loaded from: classes3.dex */
public final class SecretWordsCountPresenter extends BasePresenter<SecretWordsCountView> {
    private final Lazy wordsCountItems$delegate;

    static {
        new Companion(null);
    }

    public SecretWordsCountPresenter() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<Integer>>() { // from class: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountPresenter$wordsCountItems$2
            @Override // kotlin.jvm.functions.Function0
            public final List<Integer> invoke() {
                IntProgression step;
                List<Integer> mutableList;
                step = RangesKt___RangesKt.step(new IntRange(12, 24), 3);
                mutableList = CollectionsKt___CollectionsKt.toMutableList(step);
                return mutableList;
            }
        });
        this.wordsCountItems$delegate = lazy;
    }

    private final List<Integer> getWordsCountItems() {
        return (List) this.wordsCountItems$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        setupTokenActions();
    }

    private final void setupTokenActions() {
        ((SecretWordsCountView) getViewState()).setupAdapter(getWordsCountItems());
    }

    /* compiled from: SecretWordsCountPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
