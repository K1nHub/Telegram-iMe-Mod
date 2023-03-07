package com.smedialink.p031ui.wallet.crypto.create.secret_words_count;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: SecretWordsCountView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.crypto.create.secret_words_count.SecretWordsCountView */
/* loaded from: classes3.dex */
public interface SecretWordsCountView extends BaseView {
    void onItemSelected(int i);

    void setupAdapter(List<Integer> list);
}
