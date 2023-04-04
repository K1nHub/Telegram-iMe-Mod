package com.iMe.storage.data.repository.translate;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.translation.Translation;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: TranslationRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class TranslationRepositoryImpl$translate$2 extends Lambda implements Function1<List<Translation>, Result<? extends Translation>> {
    public static final TranslationRepositoryImpl$translate$2 INSTANCE = new TranslationRepositoryImpl$translate$2();

    TranslationRepositoryImpl$translate$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Translation> invoke(List<Translation> translations) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(translations, "translations");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(translations, "", null, null, 0, null, new C18581(translations), 30, null);
        Translation translation = (Translation) CollectionsKt.firstOrNull(translations);
        String sourceLang = translation != null ? translation.getSourceLang() : null;
        if (sourceLang == null) {
            sourceLang = "";
        }
        return Result.Companion.success(new Translation(joinToString$default, sourceLang));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TranslationRepositoryImpl.kt */
    /* renamed from: com.iMe.storage.data.repository.translate.TranslationRepositoryImpl$translate$2$1 */
    /* loaded from: classes3.dex */
    public static final class C18581 extends Lambda implements Function1<Translation, CharSequence> {
        final /* synthetic */ List<Translation> $translations;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18581(List<Translation> list) {
            super(1);
            this.$translations = list;
        }

        @Override // kotlin.jvm.functions.Function1
        public final CharSequence invoke(Translation translation) {
            String repeat = this.$translations.indexOf(translation) == 0 ? "" : StringsKt__StringsJVMKt.repeat("\n", 2);
            return repeat + translation.getText();
        }
    }
}
