package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2842i;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2983W implements Predicate {

    /* renamed from: a */
    public static final /* synthetic */ C2983W f935a = new C2983W();

    private /* synthetic */ C2983W() {
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p033j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return Predicate.CC.$default$negate(this);
    }

    @Override // p033j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo23or(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p033j$.util.function.Predicate
    public final boolean test(Object obj) {
        return ((C2842i) obj).m533c();
    }
}
