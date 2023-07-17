package org.telegram.p043ui;

import java.util.Objects;
import org.telegram.p043ui.CountrySelectActivity;
import p033j$.util.function.Function;
/* renamed from: org.telegram.ui.NewContactBottomSheet$$ExternalSyntheticLambda10 */
/* loaded from: classes5.dex */
public final /* synthetic */ class NewContactBottomSheet$$ExternalSyntheticLambda10 implements Function {
    public static final /* synthetic */ NewContactBottomSheet$$ExternalSyntheticLambda10 INSTANCE = new NewContactBottomSheet$$ExternalSyntheticLambda10();

    private /* synthetic */ NewContactBottomSheet$$ExternalSyntheticLambda10() {
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
