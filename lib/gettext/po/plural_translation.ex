defmodule Gettext.PO.PluralTranslation do
  @moduledoc """
  A struct that holds information on a plural translation.

  This struct describes a translation which has a plural form, such as the one
  in the following snippet of `.po` file:

      msgid "There was an error"
      msgid_plural "There were %{count} errors"
      msgstr[0] "C'è stato un errore"
      msgstr[1] "Ci sono stati %{count} errori"

  This struct contains three fields:

    * `msgid` - the id of the singular translation.
    * `msgid_plural` - the id of the pluralized translation.
    * `msgstr` - a map which maps plural forms as keys to translated strings as
      values. The plural forms mentioned here are the ones described in
      `Gettext.Plural`.

  """

  @type t :: %__MODULE__{
    msgid: binary,
    msgid_plural: binary,
    msgstr: %{non_neg_integer => binary},
    comments: Keyword.t,
  }

  defstruct msgid: nil, msgid_plural: nil, msgstr: nil, comments: []
end
