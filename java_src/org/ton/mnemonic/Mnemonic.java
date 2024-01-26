package org.ton.mnemonic;

import com.google.android.exoplayer2.audio.AacUtil;
import io.ktor.utils.p032io.charsets.CharsetJVMKt;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Collection;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import org.ton.crypto.SecureRandom;
import org.ton.crypto.digest.Digest;
import org.ton.crypto.kdf.PKCSS2ParametersGenerator;
import org.ton.crypto.mac.hmac.HMac;
/* compiled from: Mnemonic.kt */
/* loaded from: classes6.dex */
public final class Mnemonic {
    public static final Mnemonic INSTANCE = new Mnemonic();

    private Mnemonic() {
    }

    public final List<String> mnemonicWords() {
        return MnemonicWordListKt.getMNEMONIC_WORD_LIST();
    }

    public static /* synthetic */ Object generate$default(String str, int i, List list, Random random, Continuation continuation, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = "";
        }
        if ((i2 & 2) != 0) {
            i = 24;
        }
        if ((i2 & 4) != 0) {
            list = INSTANCE.mnemonicWords();
        }
        if ((i2 & 8) != 0) {
            random = SecureRandom.INSTANCE;
        }
        return generate(str, i, list, random, continuation);
    }

    public static final boolean isPasswordNeeded(List<String> mnemonic) {
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        byte[] entropy$default = toEntropy$default(mnemonic, null, 2, null);
        return isPasswordSeed(entropy$default) && !isBasicSeed(entropy$default);
    }

    public static /* synthetic */ boolean isValid$default(List list, String str, List list2, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        if ((i & 4) != 0) {
            list2 = INSTANCE.mnemonicWords();
        }
        return isValid(list, str, list2);
    }

    public static /* synthetic */ byte[] toSeed$default(List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        return toSeed(list, str);
    }

    public static final byte[] toSeed(List<String> mnemonic, String password) {
        byte[] bArr;
        IntRange until;
        byte[] sliceArray;
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Digest sha512 = Digest.Companion.sha512();
        byte[] entropy = toEntropy(mnemonic, password);
        bArr = MnemonicKt.DEFAULT_SALT_BYTES;
        byte[] generateDerivedParameters = new PKCSS2ParametersGenerator(sha512, entropy, bArr, (int) AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND).generateDerivedParameters(512);
        until = RangesKt___RangesKt.until(0, 32);
        sliceArray = ArraysKt___ArraysKt.sliceArray(generateDerivedParameters, until);
        return sliceArray;
    }

    public static /* synthetic */ byte[] toEntropy$default(List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "";
        }
        return toEntropy(list, str);
    }

    public static final byte[] toEntropy(List<String> mnemonic, String password) {
        String joinToString$default;
        byte[] encodeToByteArray;
        byte[] encodeToByteArray2;
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Digest sha512 = Digest.Companion.sha512();
        byte[] bArr = new byte[sha512.getDigestSize()];
        HMac hMac = new HMac(sha512);
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(mnemonic, " ", null, null, 0, null, null, 62, null);
        Charset charset = Charsets.UTF_8;
        if (Intrinsics.areEqual(charset, charset)) {
            encodeToByteArray = StringsKt__StringsJVMKt.encodeToByteArray(joinToString$default);
        } else {
            CharsetEncoder newEncoder = charset.newEncoder();
            Intrinsics.checkNotNullExpressionValue(newEncoder, "charset.newEncoder()");
            encodeToByteArray = CharsetJVMKt.encodeToByteArray(newEncoder, joinToString$default, 0, joinToString$default.length());
        }
        if (Intrinsics.areEqual(charset, charset)) {
            encodeToByteArray2 = StringsKt__StringsJVMKt.encodeToByteArray(password);
        } else {
            CharsetEncoder newEncoder2 = charset.newEncoder();
            Intrinsics.checkNotNullExpressionValue(newEncoder2, "charset.newEncoder()");
            encodeToByteArray2 = CharsetJVMKt.encodeToByteArray(newEncoder2, password, 0, password.length());
        }
        MnemonicKt.entropy(hMac, encodeToByteArray, encodeToByteArray2, bArr);
        return bArr;
    }

    public static final boolean isBasicSeed(byte[] entropy) {
        boolean basicValidation;
        Intrinsics.checkNotNullParameter(entropy, "entropy");
        basicValidation = MnemonicKt.basicValidation(new PKCSS2ParametersGenerator(Digest.Companion.sha512()), entropy);
        return basicValidation;
    }

    public static final boolean isPasswordSeed(byte[] entropy) {
        boolean passwordValidation;
        Intrinsics.checkNotNullParameter(entropy, "entropy");
        passwordValidation = MnemonicKt.passwordValidation(new PKCSS2ParametersGenerator(Digest.Companion.sha512()), entropy);
        return passwordValidation;
    }

    public static final Object generate(String str, int i, List<String> list, Random random, Continuation<? super List<String>> continuation) {
        Continuation intercepted;
        CoroutineName coroutineName;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        GlobalScope globalScope = GlobalScope.INSTANCE;
        CoroutineDispatcher coroutineDispatcher = Dispatchers.getDefault();
        coroutineName = MnemonicKt.MnemonicGeneratorCoroutineName;
        BuildersKt__Builders_commonKt.launch$default(globalScope, coroutineDispatcher.plus(coroutineName), null, new Mnemonic$generate$2$1(i, random, str, cancellableContinuationImpl, list, null), 2, null);
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static final boolean isValid(List<String> mnemonic, String password, List<String> wordlist) {
        boolean z;
        Intrinsics.checkNotNullParameter(mnemonic, "mnemonic");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(wordlist, "wordlist");
        if (!(mnemonic instanceof Collection) || !mnemonic.isEmpty()) {
            for (String str : mnemonic) {
                if (!wordlist.contains(str)) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z) {
            if (!(password.length() > 0) || isPasswordNeeded(mnemonic)) {
                return isBasicSeed(toEntropy(mnemonic, password));
            }
            return false;
        }
        return false;
    }
}
