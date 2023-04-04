package org.telegram.messenger;

import java.util.Objects;
import org.telegram.messenger.TranslateController;
import p035j$.util.function.Function;
/* loaded from: classes4.dex */
public final /* synthetic */ class TranslateController$$ExternalSyntheticLambda13 implements Function {
    public static final /* synthetic */ TranslateController$$ExternalSyntheticLambda13 INSTANCE = new TranslateController$$ExternalSyntheticLambda13();

    private /* synthetic */ TranslateController$$ExternalSyntheticLambda13() {
    }

    @Override // p035j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return Objects.requireNonNull(function);
    }

    @Override // p035j$.util.function.Function
    public final Object apply(Object obj) {
        String str;
        str = ((TranslateController.Language) obj).displayName;
        return str;
    }

    @Override // p035j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Objects.requireNonNull(function);
    }
}
