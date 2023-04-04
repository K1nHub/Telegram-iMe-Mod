package com.iMe.p032ui.wallet.crypto.create.secret_words_count;

import com.iMe.p032ui.base.mvp.base.BasePresenter;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
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
        lazy = LazyKt__LazyJVMKt.lazy(SecretWordsCountPresenter$wordsCountItems$2.INSTANCE);
        this.wordsCountItems$delegate = lazy;
    }

    private final List<Integer> getWordsCountItems() {
        return (List) this.wordsCountItems$delegate.getValue();
    }

    public final void onItemClicked(int i) {
        ((SecretWordsCountView) getViewState()).onItemSelected(getWordsCountItems().get(i).intValue());
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
