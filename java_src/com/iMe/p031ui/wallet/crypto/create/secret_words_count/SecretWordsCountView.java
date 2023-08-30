package com.iMe.p031ui.wallet.crypto.create.secret_words_count;

import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: SecretWordsCountView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.create.secret_words_count.SecretWordsCountView */
/* loaded from: classes4.dex */
public interface SecretWordsCountView extends BaseView {
    void setupAdapter(List<Integer> list);
}
