package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2832I;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2880k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C3042W3 extends AbstractC3057Z3 implements InterfaceC2881l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3042W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3042W3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC3057Z3, java.lang.Iterable, p033j$.lang.InterfaceC2782e
    /* renamed from: B */
    public InterfaceC2908s.InterfaceC2910b spliterator() {
        return new C3037V3(this, 0, this.f1019c, 0, this.f1018b);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    public void accept(int i) {
        m482A();
        int i2 = this.f1018b;
        this.f1018b = i2 + 1;
        ((int[]) this.f954e)[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: c */
    public Object mo481c(int i) {
        return new int[i];
    }

    @Override // p033j$.lang.InterfaceC2782e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2881l) {
            mo294g((InterfaceC2881l) consumer);
        } else if (AbstractC3013Q4.f914a) {
            AbstractC3013Q4.m500a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2832I.m638g(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: t */
    protected void mo480t(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2881l interfaceC2881l = (InterfaceC2881l) obj2;
        while (i < i2) {
            interfaceC2881l.accept(iArr[i]);
            i++;
        }
    }

    public String toString() {
        int[] iArr = (int[]) mo295e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1019c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1019c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: u */
    protected int mo479u(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // p033j$.util.stream.AbstractC3057Z3
    /* renamed from: z */
    protected Object[] mo474z(int i) {
        return new int[i];
    }
}
