package org.fork.controller;

import android.content.SharedPreferences;
import android.os.SystemClock;
import android.util.Base64;
import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import com.smedialink.common.TelegramPreferenceKeys;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.fork.controller.LockedSectionsController;
import org.fork.enums.AutoLockTime;
import org.fork.enums.LockedSection;
import org.fork.enums.PasscodeType;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.Utilities;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
import timber.log.Timber;
/* compiled from: LockedSectionsController.kt */
/* loaded from: classes4.dex */
public final class LockedSectionsController extends BaseController {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, LockedSectionsController> accountInstances = new ConcurrentHashMap<>(5);
    private final Map<LockedSection, SectionPasscodeData> sectionsPasscodeData;

    public static final LockedSectionsController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public LockedSectionsController(int i) {
        super(i);
        Map<LockedSection, SectionPasscodeData> mutableMapOf;
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m100to(LockedSection.ARCHIVE, new SectionPasscodeData(null, false, 0, null, 0L, 0L, null, null, false, 511, null)), TuplesKt.m100to(LockedSection.CLOUD, new SectionPasscodeData(null, false, 0, null, 0L, 0L, null, null, false, 511, null)));
        this.sectionsPasscodeData = mutableMapOf;
    }

    public final void loadConfig(SharedPreferences preferences) {
        LockedSection[] values;
        List<Byte> emptyList;
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        for (LockedSection lockedSection : LockedSection.values()) {
            SectionPasscodeData sectionPasscodeData = new SectionPasscodeData(null, false, 0, null, 0L, 0L, null, null, false, 511, null);
            sectionPasscodeData.setAutoLockIn(AutoLockTime.Companion.findById(preferences.getInt(TelegramPreferenceKeys.User.buildAutoLockInKey(lockedSection), TelegramPreferenceKeys.User.Default.autoLockInId())));
            sectionPasscodeData.setBadPasscodeTries(preferences.getInt(TelegramPreferenceKeys.User.buildBadPasscodeTriesKey(lockedSection), TelegramPreferenceKeys.User.Default.badPasscodeTries()));
            sectionPasscodeData.setSectionLocked(preferences.getBoolean(TelegramPreferenceKeys.User.buildIsSectionLockedKey(lockedSection), TelegramPreferenceKeys.User.Default.isSectionLocked()));
            sectionPasscodeData.setLastUptimeMillis(preferences.getLong(TelegramPreferenceKeys.User.buildLastUptimeMillisKey(lockedSection), TelegramPreferenceKeys.User.Default.lastUptimeMillis()));
            String string = preferences.getString(TelegramPreferenceKeys.User.buildPasscodeHashKey(lockedSection), TelegramPreferenceKeys.User.Default.passcodeHash());
            if (string == null) {
                string = "";
            } else {
                Intrinsics.checkNotNullExpressionValue(string, "getString(TelegramPrefer…ants.Symbols.EMPTY_STRING");
            }
            sectionPasscodeData.setPasscodeHash(string);
            sectionPasscodeData.setPasscodeRetryInMs(preferences.getLong(TelegramPreferenceKeys.User.buildPasscodeRetryInMsKey(lockedSection), TelegramPreferenceKeys.User.Default.passcodeRetryInMs()));
            String string2 = preferences.getString(TelegramPreferenceKeys.User.buildPasscodeSaltStringKey(lockedSection), TelegramPreferenceKeys.User.Default.passcodeSaltString());
            String str = string2 != null ? string2 : "";
            Intrinsics.checkNotNullExpressionValue(str, "getString(TelegramPrefer…ants.Symbols.EMPTY_STRING");
            if (str.length() > 0) {
                byte[] decode = Base64.decode(str, 0);
                Intrinsics.checkNotNullExpressionValue(decode, "decode(passcodeSaltString, Base64.DEFAULT)");
                emptyList = ArraysKt___ArraysKt.toList(decode);
            } else {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            sectionPasscodeData.setPasscodeSalt(emptyList);
            sectionPasscodeData.setPasscodeType(PasscodeType.Companion.findById(preferences.getInt(TelegramPreferenceKeys.User.buildPasscodeTypeKey(lockedSection), TelegramPreferenceKeys.User.Default.passcodeType())));
            sectionPasscodeData.setUseFingerprint(preferences.getBoolean(TelegramPreferenceKeys.User.buildUseFingerprintKey(lockedSection), TelegramPreferenceKeys.User.Default.useFingerprint()));
            this.sectionsPasscodeData.put(lockedSection, sectionPasscodeData);
        }
    }

    public final void saveConfig() {
        String passcodeSaltString;
        byte[] byteArray;
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        for (Map.Entry<LockedSection, SectionPasscodeData> entry : this.sectionsPasscodeData.entrySet()) {
            LockedSection key = entry.getKey();
            SectionPasscodeData value = entry.getValue();
            edit.putInt(TelegramPreferenceKeys.User.buildAutoLockInKey(key), value.getAutoLockIn().getId());
            edit.putInt(TelegramPreferenceKeys.User.buildBadPasscodeTriesKey(key), value.getBadPasscodeTries());
            edit.putBoolean(TelegramPreferenceKeys.User.buildIsSectionLockedKey(key), value.isSectionLocked());
            edit.putLong(TelegramPreferenceKeys.User.buildLastUptimeMillisKey(key), value.getLastUptimeMillis());
            edit.putString(TelegramPreferenceKeys.User.buildPasscodeHashKey(key), value.getPasscodeHash());
            edit.putLong(TelegramPreferenceKeys.User.buildPasscodeRetryInMsKey(key), value.getPasscodeRetryInMs());
            String buildPasscodeSaltStringKey = TelegramPreferenceKeys.User.buildPasscodeSaltStringKey(key);
            if (!value.getPasscodeSalt().isEmpty()) {
                byteArray = CollectionsKt___CollectionsKt.toByteArray(value.getPasscodeSalt());
                passcodeSaltString = Base64.encodeToString(byteArray, 0);
            } else {
                passcodeSaltString = TelegramPreferenceKeys.User.Default.passcodeSaltString();
            }
            edit.putString(buildPasscodeSaltStringKey, passcodeSaltString);
            edit.putInt(TelegramPreferenceKeys.User.buildPasscodeTypeKey(key), value.getPasscodeType().getId());
            edit.putBoolean(TelegramPreferenceKeys.User.buildUseFingerprintKey(key), value.getUseFingerprint());
        }
        edit.apply();
    }

    public final void cleanup() {
        this.sectionsPasscodeData.clear();
        LockedSection[] values = LockedSection.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (LockedSection lockedSection : values) {
            arrayList.add(TuplesKt.m100to(lockedSection, new SectionPasscodeData(null, false, 0, null, 0L, 0L, null, null, false, 511, null)));
        }
        MapsKt.toMap(arrayList, this.sectionsPasscodeData);
    }

    public final void setSectionsPasscodeData(LockedSection lockedSection, SectionPasscodeData sectionPasscodeData) {
        Intrinsics.checkNotNullParameter(sectionPasscodeData, "sectionPasscodeData");
        if (lockedSection != null) {
            this.sectionsPasscodeData.put(lockedSection, sectionPasscodeData);
        }
    }

    public final SectionPasscodeData getSectionsPasscodeData(LockedSection lockedSection) {
        return this.sectionsPasscodeData.get(lockedSection);
    }

    public final boolean checkSectionPasscode(LockedSection section, String passcode) {
        byte[] byteArray;
        Intrinsics.checkNotNullParameter(section, "section");
        Intrinsics.checkNotNullParameter(passcode, "passcode");
        SectionPasscodeData sectionPasscodeData = this.sectionsPasscodeData.get(section);
        if (sectionPasscodeData == null) {
            return false;
        }
        if (sectionPasscodeData.getPasscodeSalt().isEmpty()) {
            boolean areEqual = Intrinsics.areEqual(Utilities.MD5(passcode), sectionPasscodeData.getPasscodeHash());
            if (areEqual) {
                createPasscodeSalt(sectionPasscodeData, section, passcode);
                sectionPasscodeData.setSectionLocked(false);
                setSectionsPasscodeData(section, sectionPasscodeData);
            }
            return areEqual;
        }
        try {
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            byte[] bytes = passcode.getBytes(UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            int length = bytes.length + 32;
            byte[] bArr = new byte[length];
            byteArray = CollectionsKt___CollectionsKt.toByteArray(sectionPasscodeData.getPasscodeSalt());
            System.arraycopy(byteArray, 0, bArr, 0, 16);
            System.arraycopy(bytes, 0, bArr, 16, bytes.length);
            System.arraycopy(byteArray, 0, bArr, bytes.length + 16, 16);
            boolean areEqual2 = Intrinsics.areEqual(sectionPasscodeData.getPasscodeHash(), Utilities.bytesToHex(Utilities.computeSHA256(bArr, 0, length)));
            if (areEqual2) {
                sectionPasscodeData.setSectionLocked(false);
                setSectionsPasscodeData(section, sectionPasscodeData);
            }
            return areEqual2;
        } catch (Exception e) {
            Timber.m4e(e);
            return false;
        }
    }

    public final void createPasscodeSalt(SectionPasscodeData passcodeData, LockedSection section, String passcode) {
        List<Byte> list;
        Intrinsics.checkNotNullParameter(passcodeData, "passcodeData");
        Intrinsics.checkNotNullParameter(section, "section");
        Intrinsics.checkNotNullParameter(passcode, "passcode");
        try {
            byte[] bArr = new byte[16];
            Utilities.random.nextBytes(bArr);
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            byte[] bytes = passcode.getBytes(UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            int length = bytes.length + 32;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, 16);
            System.arraycopy(bytes, 0, bArr2, 16, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length + 16, 16);
            list = ArraysKt___ArraysKt.toList(bArr);
            passcodeData.setPasscodeSalt(list);
            String bytesToHex = Utilities.bytesToHex(Utilities.computeSHA256(bArr2, 0, length));
            Intrinsics.checkNotNullExpressionValue(bytesToHex, "bytesToHex(\n            …e.toLong())\n            )");
            passcodeData.setPasscodeHash(bytesToHex);
            setSectionsPasscodeData(section, passcodeData);
        } catch (Exception e) {
            Timber.m4e(e);
        }
    }

    public final void increaseBadPasscodeTries(LockedSection section) {
        int coerceAtMost;
        Intrinsics.checkNotNullParameter(section, "section");
        SectionPasscodeData sectionPasscodeData = this.sectionsPasscodeData.get(section);
        if (sectionPasscodeData == null) {
            return;
        }
        sectionPasscodeData.setBadPasscodeTries(sectionPasscodeData.getBadPasscodeTries() + 1);
        if (sectionPasscodeData.getBadPasscodeTries() >= 2) {
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(sectionPasscodeData.getBadPasscodeTries(), 7);
            sectionPasscodeData.setPasscodeRetryInMs((coerceAtMost - 2) * 5000);
            sectionPasscodeData.setLastUptimeMillis(SystemClock.elapsedRealtime());
        }
        setSectionsPasscodeData(section, sectionPasscodeData);
    }

    /* compiled from: LockedSectionsController.kt */
    /* loaded from: classes4.dex */
    public static final class SectionPasscodeData {
        private AutoLockTime autoLockIn;
        private int badPasscodeTries;
        private boolean isSectionLocked;
        private long lastUptimeMillis;
        private String passcodeHash;
        private long passcodeRetryInMs;
        private List<Byte> passcodeSalt;
        private PasscodeType passcodeType;
        private boolean useFingerprint;

        public SectionPasscodeData() {
            this(null, false, 0, null, 0L, 0L, null, null, false, 511, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SectionPasscodeData) {
                SectionPasscodeData sectionPasscodeData = (SectionPasscodeData) obj;
                return this.autoLockIn == sectionPasscodeData.autoLockIn && this.isSectionLocked == sectionPasscodeData.isSectionLocked && this.badPasscodeTries == sectionPasscodeData.badPasscodeTries && this.passcodeType == sectionPasscodeData.passcodeType && this.lastUptimeMillis == sectionPasscodeData.lastUptimeMillis && this.passcodeRetryInMs == sectionPasscodeData.passcodeRetryInMs && Intrinsics.areEqual(this.passcodeSalt, sectionPasscodeData.passcodeSalt) && Intrinsics.areEqual(this.passcodeHash, sectionPasscodeData.passcodeHash) && this.useFingerprint == sectionPasscodeData.useFingerprint;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = this.autoLockIn.hashCode() * 31;
            boolean z = this.isSectionLocked;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int hashCode2 = (((((((((((((hashCode + i) * 31) + this.badPasscodeTries) * 31) + this.passcodeType.hashCode()) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.lastUptimeMillis)) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.passcodeRetryInMs)) * 31) + this.passcodeSalt.hashCode()) * 31) + this.passcodeHash.hashCode()) * 31;
            boolean z2 = this.useFingerprint;
            return hashCode2 + (z2 ? 1 : z2 ? 1 : 0);
        }

        public String toString() {
            return "SectionPasscodeData(autoLockIn=" + this.autoLockIn + ", isSectionLocked=" + this.isSectionLocked + ", badPasscodeTries=" + this.badPasscodeTries + ", passcodeType=" + this.passcodeType + ", lastUptimeMillis=" + this.lastUptimeMillis + ", passcodeRetryInMs=" + this.passcodeRetryInMs + ", passcodeSalt=" + this.passcodeSalt + ", passcodeHash=" + this.passcodeHash + ", useFingerprint=" + this.useFingerprint + ')';
        }

        public SectionPasscodeData(AutoLockTime autoLockIn, boolean z, int i, PasscodeType passcodeType, long j, long j2, List<Byte> passcodeSalt, String passcodeHash, boolean z2) {
            Intrinsics.checkNotNullParameter(autoLockIn, "autoLockIn");
            Intrinsics.checkNotNullParameter(passcodeType, "passcodeType");
            Intrinsics.checkNotNullParameter(passcodeSalt, "passcodeSalt");
            Intrinsics.checkNotNullParameter(passcodeHash, "passcodeHash");
            this.autoLockIn = autoLockIn;
            this.isSectionLocked = z;
            this.badPasscodeTries = i;
            this.passcodeType = passcodeType;
            this.lastUptimeMillis = j;
            this.passcodeRetryInMs = j2;
            this.passcodeSalt = passcodeSalt;
            this.passcodeHash = passcodeHash;
            this.useFingerprint = z2;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ SectionPasscodeData(org.fork.enums.AutoLockTime r12, boolean r13, int r14, org.fork.enums.PasscodeType r15, long r16, long r18, java.util.List r20, java.lang.String r21, boolean r22, int r23, kotlin.jvm.internal.DefaultConstructorMarker r24) {
            /*
                r11 = this;
                r0 = r23
                r1 = r0 & 1
                if (r1 == 0) goto L11
                org.fork.enums.AutoLockTime$Companion r1 = org.fork.enums.AutoLockTime.Companion
                int r2 = com.smedialink.common.TelegramPreferenceKeys.User.Default.autoLockInId()
                org.fork.enums.AutoLockTime r1 = r1.findById(r2)
                goto L12
            L11:
                r1 = r12
            L12:
                r2 = r0 & 2
                if (r2 == 0) goto L1b
                boolean r2 = com.smedialink.common.TelegramPreferenceKeys.User.Default.isSectionLocked()
                goto L1c
            L1b:
                r2 = r13
            L1c:
                r3 = r0 & 4
                if (r3 == 0) goto L25
                int r3 = com.smedialink.common.TelegramPreferenceKeys.User.Default.badPasscodeTries()
                goto L26
            L25:
                r3 = r14
            L26:
                r4 = r0 & 8
                if (r4 == 0) goto L35
                org.fork.enums.PasscodeType$Companion r4 = org.fork.enums.PasscodeType.Companion
                int r5 = com.smedialink.common.TelegramPreferenceKeys.User.Default.passcodeType()
                org.fork.enums.PasscodeType r4 = r4.findById(r5)
                goto L36
            L35:
                r4 = r15
            L36:
                r5 = r0 & 16
                if (r5 == 0) goto L3f
                long r5 = com.smedialink.common.TelegramPreferenceKeys.User.Default.lastUptimeMillis()
                goto L41
            L3f:
                r5 = r16
            L41:
                r7 = r0 & 32
                if (r7 == 0) goto L4a
                long r7 = com.smedialink.common.TelegramPreferenceKeys.User.Default.passcodeRetryInMs()
                goto L4c
            L4a:
                r7 = r18
            L4c:
                r9 = r0 & 64
                if (r9 == 0) goto L63
                java.lang.String r9 = com.smedialink.common.TelegramPreferenceKeys.User.Default.passcodeSaltString()
                r10 = 0
                byte[] r9 = android.util.Base64.decode(r9, r10)
                java.lang.String r10 = "decode(TelegramPreferenc…String(), Base64.DEFAULT)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r10)
                java.util.List r9 = kotlin.collections.ArraysKt.toList(r9)
                goto L65
            L63:
                r9 = r20
            L65:
                r10 = r0 & 128(0x80, float:1.794E-43)
                if (r10 == 0) goto L6e
                java.lang.String r10 = com.smedialink.common.TelegramPreferenceKeys.User.Default.passcodeHash()
                goto L70
            L6e:
                r10 = r21
            L70:
                r0 = r0 & 256(0x100, float:3.59E-43)
                if (r0 == 0) goto L79
                boolean r0 = com.smedialink.common.TelegramPreferenceKeys.User.Default.useFingerprint()
                goto L7b
            L79:
                r0 = r22
            L7b:
                r12 = r11
                r13 = r1
                r14 = r2
                r15 = r3
                r16 = r4
                r17 = r5
                r19 = r7
                r21 = r9
                r22 = r10
                r23 = r0
                r12.<init>(r13, r14, r15, r16, r17, r19, r21, r22, r23)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.fork.controller.LockedSectionsController.SectionPasscodeData.<init>(org.fork.enums.AutoLockTime, boolean, int, org.fork.enums.PasscodeType, long, long, java.util.List, java.lang.String, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        public final AutoLockTime getAutoLockIn() {
            return this.autoLockIn;
        }

        public final void setAutoLockIn(AutoLockTime autoLockTime) {
            Intrinsics.checkNotNullParameter(autoLockTime, "<set-?>");
            this.autoLockIn = autoLockTime;
        }

        public final boolean isSectionLocked() {
            return this.isSectionLocked;
        }

        public final void setSectionLocked(boolean z) {
            this.isSectionLocked = z;
        }

        public final int getBadPasscodeTries() {
            return this.badPasscodeTries;
        }

        public final void setBadPasscodeTries(int i) {
            this.badPasscodeTries = i;
        }

        public final PasscodeType getPasscodeType() {
            return this.passcodeType;
        }

        public final void setPasscodeType(PasscodeType passcodeType) {
            Intrinsics.checkNotNullParameter(passcodeType, "<set-?>");
            this.passcodeType = passcodeType;
        }

        public final long getLastUptimeMillis() {
            return this.lastUptimeMillis;
        }

        public final void setLastUptimeMillis(long j) {
            this.lastUptimeMillis = j;
        }

        public final long getPasscodeRetryInMs() {
            return this.passcodeRetryInMs;
        }

        public final void setPasscodeRetryInMs(long j) {
            this.passcodeRetryInMs = j;
        }

        public final List<Byte> getPasscodeSalt() {
            return this.passcodeSalt;
        }

        public final void setPasscodeSalt(List<Byte> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.passcodeSalt = list;
        }

        public final String getPasscodeHash() {
            return this.passcodeHash;
        }

        public final void setPasscodeHash(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.passcodeHash = str;
        }

        public final boolean getUseFingerprint() {
            return this.useFingerprint;
        }

        public final void setUseFingerprint(boolean z) {
            this.useFingerprint = z;
        }

        public final void reducePasscodeRetryTime(long j) {
            this.passcodeRetryInMs -= j - this.lastUptimeMillis;
        }
    }

    /* compiled from: LockedSectionsController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final LockedSectionsController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (LockedSectionsController) tmp0.invoke(obj);
        }

        public final LockedSectionsController getInstance(int i) {
            ConcurrentHashMap concurrentHashMap = LockedSectionsController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final LockedSectionsController$Companion$getInstance$1 lockedSectionsController$Companion$getInstance$1 = new LockedSectionsController$Companion$getInstance$1(i);
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: org.fork.controller.LockedSectionsController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    LockedSectionsController instance$lambda$0;
                    instance$lambda$0 = LockedSectionsController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) = acc…r(accountIndex)\n        }");
            return (LockedSectionsController) computeIfAbsent;
        }
    }
}
