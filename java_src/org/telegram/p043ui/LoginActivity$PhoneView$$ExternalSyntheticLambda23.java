package org.telegram.p043ui;

import java.util.Objects;
import org.telegram.p043ui.CountrySelectActivity;
import p033j$.util.function.Function;
/* renamed from: org.telegram.ui.LoginActivity$PhoneView$$ExternalSyntheticLambda23 */
/* loaded from: classes5.dex */
public final /* synthetic */ class LoginActivity$PhoneView$$ExternalSyntheticLambda23 implements Function {
    public static final /* synthetic */ LoginActivity$PhoneView$$ExternalSyntheticLambda23 INSTANCE = new LoginActivity$PhoneView$$ExternalSyntheticLambda23();

    private /* synthetic */ LoginActivity$PhoneView$$ExternalSyntheticLambda23() {
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return Objects.requireNonNull(function);
    }

    @Override // p033j$.util.function.Function
    public final Object apply(Object obj) {
        String str;
        str = ((CountrySelectActivity.Country) obj).name;
        return str;
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Objects.requireNonNull(function);
    }
}