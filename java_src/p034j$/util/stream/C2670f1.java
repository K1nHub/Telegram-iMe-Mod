package p034j$.util.stream;

import p034j$.util.function.Predicate;
/* renamed from: j$.util.stream.f1 */
/* loaded from: classes2.dex */
class C2670f1 extends AbstractC2694j1 {

    /* renamed from: c */
    final /* synthetic */ EnumC2700k1 f934c;

    /* renamed from: d */
    final /* synthetic */ Predicate f935d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2670f1(EnumC2700k1 enumC2700k1, Predicate predicate) {
        super(enumC2700k1);
        this.f934c = enumC2700k1;
        this.f935d = predicate;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.f964a) {
            return;
        }
        boolean test = this.f935d.test(obj);
        z = this.f934c.f970a;
        if (test == z) {
            this.f964a = true;
            z2 = this.f934c.f971b;
            this.f965b = z2;
        }
    }
}
