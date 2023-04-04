package org.telegram.p048ui;

import java.util.Objects;
import org.telegram.p048ui.CountrySelectActivity;
import p035j$.util.function.Function;
/* renamed from: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda21 */
/* loaded from: classes5.dex */
public final /* synthetic */ class LoginActivity$PhoneView$$ExternalSyntheticLambda21 implements Function {
    public static final /* synthetic */ LoginActivity$PhoneView$$ExternalSyntheticLambda21 INSTANCE = new LoginActivity$PhoneView$$ExternalSyntheticLambda21();

    private /* synthetic */ LoginActivity$PhoneView$$ExternalSyntheticLambda21() {
    }

    @Override // p035j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return Objects.requireNonNull(function);
    }

    @Override // p035j$.util.function.Function
    public final Object apply(Object obj) {
        String str;
        str = ((CountrySelectActivity.Country) obj).name;
        return str;
    }

    @Override // p035j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Objects.requireNonNull(function);
    }
}
