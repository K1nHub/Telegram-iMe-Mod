package com.smedialink.storage.data.repository.translate;

import com.smedialink.storage.domain.model.translation.Translation;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TranslationRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class TranslationRepositoryImpl$translate$2$1 extends Lambda implements Function1<Translation, CharSequence> {
    final /* synthetic */ List<Translation> $translations;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranslationRepositoryImpl$translate$2$1(List<Translation> list) {
        super(1);
        this.$translations = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final CharSequence invoke(Translation translation) {
        return Intrinsics.stringPlus(this.$translations.indexOf(translation) == 0 ? "" : StringsKt__StringsJVMKt.repeat("\n", 2), translation.getText());
    }
}
