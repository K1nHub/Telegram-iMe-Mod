package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2982j;
import p033j$.util.function.C2964k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2963j;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C3077N2 implements InterfaceC3105S2, InterfaceC3207k3 {

    /* renamed from: a */
    private boolean f900a;

    /* renamed from: b */
    private int f901b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2963j f902c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3077N2(InterfaceC2963j interfaceC2963j) {
        this.f902c = interfaceC2963j;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        AbstractC3229o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public void accept(int i) {
        if (this.f900a) {
            this.f900a = false;
        } else {
            i = this.f902c.applyAsInt(this.f901b, i);
        }
        this.f901b = i;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        AbstractC3229o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3229o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public Object get() {
        return this.f900a ? C2982j.m549a() : C2982j.m546d(this.f901b);
    }

    @Override // p033j$.util.stream.InterfaceC3105S2
    /* renamed from: h */
    public void mo498h(InterfaceC3105S2 interfaceC3105S2) {
        C3077N2 c3077n2 = (C3077N2) interfaceC3105S2;
        if (c3077n2.f900a) {
            return;
        }
        accept(c3077n2.f901b);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f900a = true;
        this.f901b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
