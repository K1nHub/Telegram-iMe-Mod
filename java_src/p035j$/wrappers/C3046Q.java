package p035j$.wrappers;

import java.util.function.IntConsumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3046Q implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2674l f1162a;

    private /* synthetic */ C3046Q(InterfaceC2674l interfaceC2674l) {
        this.f1162a = interfaceC2674l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m173a(InterfaceC2674l interfaceC2674l) {
        if (interfaceC2674l == null) {
            return null;
        }
        return interfaceC2674l instanceof C3045P ? ((C3045P) interfaceC2674l).f1161a : new C3046Q(interfaceC2674l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1162a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m173a(this.f1162a.mo174l(C3045P.m175b(intConsumer)));
    }
}
