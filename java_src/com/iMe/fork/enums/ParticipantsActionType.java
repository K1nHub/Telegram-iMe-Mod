package com.iMe.fork.enums;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.messenger.C3634R;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum DELETE uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: ParticipantsActionType.kt */
/* loaded from: classes3.dex */
public final class ParticipantsActionType {
    private static final /* synthetic */ ParticipantsActionType[] $VALUES;
    public static final Companion Companion;
    public static final ParticipantsActionType DELETE;
    public static final ParticipantsActionType RETURN;
    public static final ParticipantsActionType UNBLOCK;
    public static ParticipantsActionType defaultValue;
    private final String confirmationButtonTextKey;
    private final int confirmationButtonTextResId;
    private final int confirmationDescriptionTextResId;

    private static final /* synthetic */ ParticipantsActionType[] $values() {
        return new ParticipantsActionType[]{DELETE, UNBLOCK, RETURN};
    }

    public static ParticipantsActionType valueOf(String str) {
        return (ParticipantsActionType) Enum.valueOf(ParticipantsActionType.class, str);
    }

    public static ParticipantsActionType[] values() {
        return (ParticipantsActionType[]) $VALUES.clone();
    }

    private ParticipantsActionType(String str, int i, int i2, String str2, int i3) {
        this.confirmationDescriptionTextResId = i2;
        this.confirmationButtonTextKey = str2;
        this.confirmationButtonTextResId = i3;
    }

    public final int getConfirmationDescriptionTextResId() {
        return this.confirmationDescriptionTextResId;
    }

    public final String getConfirmationButtonTextKey() {
        return this.confirmationButtonTextKey;
    }

    public final int getConfirmationButtonTextResId() {
        return this.confirmationButtonTextResId;
    }

    static {
        int i = C3634R.string.profile_group_filter_confirm_remove_message;
        int i2 = C3634R.string.Delete;
        DELETE = new ParticipantsActionType("DELETE", 0, i, "Delete", i2);
        UNBLOCK = new ParticipantsActionType("UNBLOCK", 1, C3634R.string.profile_group_filter_confirm_unban_message, "Delete", i2);
        ParticipantsActionType participantsActionType = new ParticipantsActionType("RETURN", 2, C3634R.string.profile_group_filter_confirm_return_message, "UserRestrictionsInviteUsers", C3634R.string.UserRestrictionsInviteUsers);
        RETURN = participantsActionType;
        $VALUES = $values();
        Companion = new Companion(null);
        defaultValue = participantsActionType;
    }

    /* compiled from: ParticipantsActionType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
