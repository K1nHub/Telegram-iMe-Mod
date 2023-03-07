package org.fork.enums;

import java.util.ArrayList;
import java.util.Objects;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.tgnet.TLRPC$MessageAction;
import org.telegram.tgnet.TLRPC$TL_messageActionChatAddUser;
import org.telegram.tgnet.TLRPC$TL_messageActionChatCreate;
import org.telegram.tgnet.TLRPC$TL_messageActionChatDeletePhoto;
import org.telegram.tgnet.TLRPC$TL_messageActionChatDeleteUser;
import org.telegram.tgnet.TLRPC$TL_messageActionChatEditPhoto;
import org.telegram.tgnet.TLRPC$TL_messageActionChatEditTitle;
import org.telegram.tgnet.TLRPC$TL_messageActionChatJoinedByLink;
import org.telegram.tgnet.TLRPC$TL_messageActionGameScore;
import org.telegram.tgnet.TLRPC$TL_messageActionGeoProximityReached;
import org.telegram.tgnet.TLRPC$TL_messageActionGroupCall;
import org.telegram.tgnet.TLRPC$TL_messageActionGroupCallScheduled;
import org.telegram.tgnet.TLRPC$TL_messageActionInviteToGroupCall;
import org.telegram.tgnet.TLRPC$TL_messageActionPaymentSent;
import org.telegram.tgnet.TLRPC$TL_messageActionPinMessage;
import org.telegram.tgnet.TLRPC$TL_messageActionScreenshotTaken;
import org.telegram.tgnet.TLRPC$TL_messageActionSetMessagesTTL;
import org.telegram.tgnet.TLRPC$TL_messageActionTTLChange;
/* compiled from: ServiceMessageType.kt */
/* loaded from: classes4.dex */
public enum ServiceMessageType {
    ALL(-1, -1, TLRPC$MessageAction.class),
    CHAT_CREATED(0, null, TLRPC$TL_messageActionChatCreate.class),
    TITLE_EDITED(1, 0, TLRPC$TL_messageActionChatEditTitle.class),
    PHOTO_CHANGED(2, 1, TLRPC$TL_messageActionChatEditPhoto.class),
    PHOTO_DELETED(3, 2, TLRPC$TL_messageActionChatDeletePhoto.class),
    USER_ADDED(4, null, TLRPC$TL_messageActionChatAddUser.class),
    USER_LEFT(5, null, TLRPC$TL_messageActionChatDeleteUser.class),
    USER_JOINED_LINK(6, null, TLRPC$TL_messageActionChatJoinedByLink.class),
    MESSAGE_PINNED(7, 3, TLRPC$TL_messageActionPinMessage.class),
    GAME_SCORE(8, null, TLRPC$TL_messageActionGameScore.class),
    PAYMENT_SENT(9, 4, TLRPC$TL_messageActionPaymentSent.class),
    SCREENSHOT_TAKEN(10, null, TLRPC$TL_messageActionScreenshotTaken.class),
    GEO_PROXIMITY_REACHED(11, null, TLRPC$TL_messageActionGeoProximityReached.class),
    GROUP_CALL(12, 5, TLRPC$TL_messageActionGroupCall.class),
    GROUP_CALL_SCHEDULED(13, 6, TLRPC$TL_messageActionGroupCallScheduled.class),
    GROUP_CALL_INVITE(14, null, TLRPC$TL_messageActionInviteToGroupCall.class),
    TTL_CHANGE(15, 7, TLRPC$TL_messageActionTTLChange.class),
    SET_MESSAGES_TTL(16, 8, TLRPC$TL_messageActionSetMessagesTTL.class);
    
    public static final Companion Companion = new Companion(null);
    private final Class<? extends TLRPC$MessageAction> action;
    private final Integer channelCode;
    private final Integer groupCode;

    public static final ServiceMessageType getByCode(int i, boolean z) {
        return Companion.getByCode(i, z);
    }

    public static final ServiceMessageType[] getValues(boolean z) {
        return Companion.getValues(z);
    }

    ServiceMessageType(Integer num, Integer num2, Class cls) {
        this.groupCode = num;
        this.channelCode = num2;
        this.action = cls;
    }

    public final Integer getGroupCode() {
        return this.groupCode;
    }

    public final Integer getChannelCode() {
        return this.channelCode;
    }

    public final Class<? extends TLRPC$MessageAction> getAction() {
        return this.action;
    }

    public final int getCode(boolean z) {
        Integer num = z ? this.channelCode : this.groupCode;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* compiled from: ServiceMessageType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ServiceMessageType getByCode(int i, boolean z) {
            ServiceMessageType serviceMessageType;
            Integer groupCode;
            Integer channelCode;
            ServiceMessageType[] values = ServiceMessageType.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    serviceMessageType = null;
                    break;
                }
                serviceMessageType = values[i2];
                if ((z && (channelCode = serviceMessageType.getChannelCode()) != null && channelCode.intValue() == i) || !(z || (groupCode = serviceMessageType.getGroupCode()) == null || groupCode.intValue() != i)) {
                    break;
                }
                i2++;
            }
            return serviceMessageType == null ? ServiceMessageType.PHOTO_DELETED : serviceMessageType;
        }

        public final ServiceMessageType[] getValues(boolean z) {
            ServiceMessageType[] values = ServiceMessageType.values();
            ArrayList arrayList = new ArrayList();
            for (ServiceMessageType serviceMessageType : values) {
                if ((z && serviceMessageType.getChannelCode() != null) || !(z || serviceMessageType.getGroupCode() == null)) {
                    arrayList.add(serviceMessageType);
                }
            }
            Object[] array = arrayList.toArray(new ServiceMessageType[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            return (ServiceMessageType[]) array;
        }
    }
}
