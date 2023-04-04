package p035j$.wrappers;

import java.util.function.IntConsumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3045P implements InterfaceC2674l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1161a;

    private /* synthetic */ C3045P(IntConsumer intConsumer) {
        this.f1161a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2674l m175b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3046Q ? ((C3046Q) intConsumer).f1162a : new C3045P(intConsumer);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    public /* synthetic */ void accept(int i) {
        this.f1161a.accept(i);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        return m175b(this.f1161a.andThen(C3046Q.m173a(interfaceC2674l)));
    }
}
