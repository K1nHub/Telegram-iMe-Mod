package p034j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2467s implements InterfaceC2468t {

    /* renamed from: a */
    public final /* synthetic */ int f655a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2468t f656b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2468t f657c;

    public /* synthetic */ C2467s(InterfaceC2468t interfaceC2468t, InterfaceC2468t interfaceC2468t2, int i) {
        this.f655a = i;
        if (i != 1) {
            this.f656b = interfaceC2468t;
            this.f657c = interfaceC2468t2;
            return;
        }
        this.f656b = interfaceC2468t;
        this.f657c = interfaceC2468t2;
    }

    @Override // p034j$.util.function.InterfaceC2468t
    /* renamed from: a */
    public InterfaceC2468t mo127a(InterfaceC2468t interfaceC2468t) {
        switch (this.f655a) {
            case 0:
                Objects.requireNonNull(interfaceC2468t);
                return new C2467s(this, interfaceC2468t, 0);
            default:
                Objects.requireNonNull(interfaceC2468t);
                return new C2467s(this, interfaceC2468t, 0);
        }
    }

    @Override // p034j$.util.function.InterfaceC2468t
    public final long applyAsLong(long j) {
        switch (this.f655a) {
            case 0:
                return this.f657c.applyAsLong(this.f656b.applyAsLong(j));
            default:
                return this.f656b.applyAsLong(this.f657c.applyAsLong(j));
        }
    }

    @Override // p034j$.util.function.InterfaceC2468t
    /* renamed from: b */
    public InterfaceC2468t mo126b(InterfaceC2468t interfaceC2468t) {
        switch (this.f655a) {
            case 0:
                Objects.requireNonNull(interfaceC2468t);
                return new C2467s(this, interfaceC2468t, 1);
            default:
                Objects.requireNonNull(interfaceC2468t);
                return new C2467s(this, interfaceC2468t, 1);
        }
    }
}
