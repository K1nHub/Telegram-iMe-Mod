package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2987W3 extends AbstractC3002Z3 implements InterfaceC2826l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2987W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2987W3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC3002Z3, java.lang.Iterable, p033j$.lang.InterfaceC2727e
    /* renamed from: B */
    public InterfaceC2853s.InterfaceC2855b spliterator() {
        return new C2982V3(this, 0, this.f1015c, 0, this.f1014b);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        m464A();
        int i2 = this.f1014b;
        this.f1014b = i2 + 1;
        ((int[]) this.f950e)[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: c */
    public Object mo463c(int i) {
        return new int[i];
    }

    @Override // p033j$.lang.InterfaceC2727e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            mo276g((InterfaceC2826l) consumer);
        } else if (AbstractC2958Q4.f910a) {
            AbstractC2958Q4.m482a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2777I.m620g(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo165l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: t */
    protected void mo462t(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2826l interfaceC2826l = (InterfaceC2826l) obj2;
        while (i < i2) {
            interfaceC2826l.accept(iArr[i]);
            i++;
        }
    }

    public String toString() {
        int[] iArr = (int[]) mo277e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1015c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1015c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: u */
    protected int mo461u(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // p033j$.util.stream.AbstractC3002Z3
    /* renamed from: z */
    protected Object[] mo456z(int i) {
        return new int[i];
    }
}
