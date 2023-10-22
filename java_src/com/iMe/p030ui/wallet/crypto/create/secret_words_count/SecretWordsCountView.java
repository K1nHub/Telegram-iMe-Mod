package com.iMe.p030ui.wallet.crypto.create.secret_words_count;

import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: SecretWordsCountView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountView */
/* loaded from: classes3.dex */
public interface SecretWordsCountView extends BaseView {
    void setupAdapter(List<Integer> list);
}
