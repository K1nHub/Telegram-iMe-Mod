package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: AccountUninit.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AccountUninit implements AccountState, TlbConstructorProvider<AccountUninit> {
    private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate;
    public static final AccountUninit INSTANCE = new AccountUninit();
    private final /* synthetic */ AccountUninitTlbConstructor $$delegate_0 = AccountUninitTlbConstructor.INSTANCE;

    @Override // org.ton.tlb.TlbLoader
    public AccountUninit loadTlb(Cell cell) {
        Intrinsics.checkNotNullParameter(cell, "cell");
        return this.$$delegate_0.loadTlb(cell);
    }

    @Override // org.ton.tlb.TlbLoader
    public AccountUninit loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return this.$$delegate_0.loadTlb(cellSlice);
    }

    @Override // org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AccountUninit value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.$$delegate_0.storeTlb(cellBuilder, value);
    }

    @Override // org.ton.tlb.providers.TlbConstructorProvider
    public org.ton.tlb.TlbConstructor<AccountUninit> tlbConstructor() {
        return this.$$delegate_0.tlbConstructor();
    }

    static {
        Lazy<KSerializer<Object>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<KSerializer<Object>>() { // from class: org.ton.block.AccountUninit.1
            @Override // kotlin.jvm.functions.Function0
            public final KSerializer<Object> invoke() {
                return new ObjectSerializer("account_uninit", AccountUninit.INSTANCE, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.AccountUninit$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
                    private final /* synthetic */ String discriminator;

                    {
                        Intrinsics.checkNotNullParameter(discriminator, "discriminator");
                        this.discriminator = discriminator;
                    }

                    @Override // java.lang.annotation.Annotation
                    public final /* synthetic */ Class annotationType() {
                        return JsonClassDiscriminator.class;
                    }

                    @Override // kotlinx.serialization.json.JsonClassDiscriminator
                    public final /* synthetic */ String discriminator() {
                        return this.discriminator;
                    }

                    @Override // java.lang.annotation.Annotation
                    public final boolean equals(Object obj) {
                        return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
                    }

                    @Override // java.lang.annotation.Annotation
                    public final int hashCode() {
                        return this.discriminator.hashCode() ^ 707790692;
                    }

                    @Override // java.lang.annotation.Annotation
                    public final String toString() {
                        return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
                    }
                }});
            }
        });
        $cachedSerializer$delegate = lazy;
    }

    private AccountUninit() {
    }

    private final /* synthetic */ KSerializer get$cachedSerializer() {
        return $cachedSerializer$delegate.getValue();
    }

    public final KSerializer<AccountUninit> serializer() {
        return get$cachedSerializer();
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return printer.type("account_uninit");
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }
}
