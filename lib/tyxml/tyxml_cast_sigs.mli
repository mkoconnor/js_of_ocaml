(* Js_of_ocaml library
 * http://www.ocsigen.org/js_of_ocaml/
 * Copyright (C) 2014 Hugo Heuzard
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, with linking exception;
 * either version 2.1 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
*)

(** Signatures to cast to and from Tyxml types *)

module type OF = sig
  type 'a elt
  val of_element : Dom_html.element Js.t -> 'a elt

  val of_html : Dom_html.htmlElement Js.t -> [> Html5_types.html] elt
  val of_head : Dom_html.headElement Js.t -> [> Html5_types.head] elt
  val of_link : Dom_html.linkElement Js.t -> [> Html5_types.link] elt
  val of_title : Dom_html.titleElement Js.t -> [> Html5_types.title] elt
  val of_meta : Dom_html.metaElement Js.t -> [> Html5_types.meta] elt
  val of_base : Dom_html.baseElement Js.t -> [> Html5_types.base] elt
  val of_style : Dom_html.styleElement Js.t -> [> Html5_types.style] elt
  val of_body : Dom_html.bodyElement Js.t -> [> Html5_types.body] elt
  val of_form : Dom_html.formElement Js.t -> [> Html5_types.form] elt
  val of_optGroup : Dom_html.optGroupElement Js.t -> [> Html5_types.optgroup] elt
  val of_option : Dom_html.optionElement Js.t -> [> Html5_types.selectoption] elt
  val of_select : Dom_html.selectElement Js.t -> [> Html5_types.select] elt
  val of_input : Dom_html.inputElement Js.t -> [> Html5_types.input] elt
  val of_textArea : Dom_html.textAreaElement Js.t -> [> Html5_types.textarea] elt
  val of_button : Dom_html.buttonElement Js.t -> [> Html5_types.button] elt
  val of_label : Dom_html.labelElement Js.t -> [> Html5_types.label] elt
  val of_fieldSet : Dom_html.fieldSetElement Js.t -> [> Html5_types.fieldset] elt
  val of_legend : Dom_html.legendElement Js.t -> [> Html5_types.legend] elt
  val of_uList : Dom_html.uListElement Js.t -> [> Html5_types.ul] elt
  val of_oList : Dom_html.oListElement Js.t -> [> Html5_types.ol] elt
  val of_dList : Dom_html.dListElement Js.t -> [> Html5_types.dl] elt
  val of_li : Dom_html.liElement Js.t -> [> Html5_types.li] elt
  val of_div : Dom_html.divElement Js.t -> [> Html5_types.div] elt
  val of_paragraph : Dom_html.paragraphElement Js.t -> [> Html5_types.p] elt
  val of_heading : Dom_html.headingElement Js.t -> [> Html5_types.heading] elt
  val of_quote : Dom_html.quoteElement Js.t -> [> Html5_types.blockquote] elt
  val of_pre : Dom_html.preElement Js.t -> [> Html5_types.pre] elt
  val of_br : Dom_html.brElement Js.t -> [> Html5_types.br] elt
  val of_hr : Dom_html.hrElement Js.t -> [> Html5_types.hr] elt
  val of_mod : Dom_html.modElement Js.t -> [> 'a Html5_types.del | 'a Html5_types.ins ] elt
  val of_anchor : Dom_html.anchorElement Js.t -> [> 'a Html5_types.a] elt
  val of_image : Dom_html.imageElement Js.t -> [> Html5_types.img] elt
  val of_object : Dom_html.objectElement Js.t -> [> 'a Html5_types.object_] elt
  val of_param : Dom_html.paramElement Js.t -> [> Html5_types.param] elt
  val of_area : Dom_html.areaElement Js.t -> [> Html5_types.area] elt
  val of_map : Dom_html.mapElement Js.t -> [> 'a Html5_types.map] elt
  val of_script : Dom_html.scriptElement Js.t -> [> Html5_types.script] elt
  val of_embed : Dom_html.embedElement Js.t -> [> Html5_types.embed] elt
  val of_tableCell : Dom_html.tableCellElement Js.t -> [> Html5_types.td | Html5_types.th ] elt
  val of_tableRow : Dom_html.tableRowElement Js.t -> [> Html5_types.tr] elt
  val of_tableCol : Dom_html.tableColElement Js.t -> [> Html5_types.col] elt
  val of_tableSection : Dom_html.tableSectionElement Js.t -> [> Html5_types.tfoot | Html5_types.thead | Html5_types.tbody ] elt
  val of_tableCaption : Dom_html.tableCaptionElement Js.t -> [> Html5_types.caption] elt
  val of_table : Dom_html.tableElement Js.t -> [> Html5_types.table] elt
  val of_canvas : Dom_html.canvasElement Js.t -> [> 'a Html5_types.canvas] elt
  val of_iFrame : Dom_html.iFrameElement Js.t -> [> Html5_types.iframe] elt
  val of_audio : Dom_html.audioElement Js.t -> [> 'a Html5_types.audio ] elt
  val of_video : Dom_html.videoElement Js.t -> [> 'a Html5_types.video ] elt
end

module type TO = sig
  type 'a elt
  val of_element : 'a elt -> Dom_html.element Js.t
  val of_node : 'a elt -> Dom.node Js.t
  val of_pcdata : [< Html5_types.pcdata] elt -> Dom.text Js.t

  val of_html : [< Html5_types.html] elt -> Dom_html.htmlElement Js.t
  val of_head : [< Html5_types.head] elt -> Dom_html.headElement Js.t
  val of_link : [< Html5_types.link] elt -> Dom_html.linkElement Js.t
  val of_title : [< Html5_types.title] elt -> Dom_html.titleElement Js.t
  val of_meta : [< Html5_types.meta] elt -> Dom_html.metaElement Js.t
  val of_base : [< Html5_types.base] elt -> Dom_html.baseElement Js.t
  val of_style : [< Html5_types.style] elt -> Dom_html.styleElement Js.t
  val of_body : [< Html5_types.body] elt -> Dom_html.bodyElement Js.t
  val of_form : [< Html5_types.form] elt -> Dom_html.formElement Js.t
  val of_optgroup : [< Html5_types.optgroup] elt -> Dom_html.optGroupElement Js.t
  val of_option : [< Html5_types.selectoption] elt -> Dom_html.optionElement Js.t
  val of_select : [< Html5_types.select] elt -> Dom_html.selectElement Js.t
  val of_input : [< Html5_types.input] elt -> Dom_html.inputElement Js.t
  val of_textarea : [< Html5_types.textarea] elt -> Dom_html.textAreaElement Js.t
  val of_button : [< Html5_types.button] elt -> Dom_html.buttonElement Js.t
  val of_label : [< Html5_types.label] elt -> Dom_html.labelElement Js.t
  val of_fieldset : [< Html5_types.fieldset] elt -> Dom_html.fieldSetElement Js.t
  val of_legend : [< Html5_types.legend] elt -> Dom_html.legendElement Js.t
  val of_ul : [< Html5_types.ul] elt -> Dom_html.uListElement Js.t
  val of_ol : [< Html5_types.ol] elt -> Dom_html.oListElement Js.t
  val of_dl : [< Html5_types.dl] elt -> Dom_html.dListElement Js.t
  val of_li : [< Html5_types.li] elt -> Dom_html.liElement Js.t
  val of_div : [< Html5_types.div] elt -> Dom_html.divElement Js.t
  val of_p : [< Html5_types.p] elt -> Dom_html.paragraphElement Js.t
  val of_heading : [< Html5_types.heading] elt -> Dom_html.headingElement Js.t
  val of_blockquote : [< Html5_types.blockquote] elt -> Dom_html.quoteElement Js.t
  val of_pre : [< Html5_types.pre] elt -> Dom_html.preElement Js.t
  val of_br : [< Html5_types.br] elt -> Dom_html.brElement Js.t
  val of_hr : [< Html5_types.hr] elt -> Dom_html.hrElement Js.t
  val of_del : [< 'a Html5_types.del] elt -> Dom_html.modElement Js.t
  val of_ins : [< 'a Html5_types.ins] elt -> Dom_html.modElement Js.t
  val of_a : [< 'a Html5_types.a] elt -> Dom_html.anchorElement Js.t
  val of_img : [< Html5_types.img_interactive] elt -> Dom_html.imageElement Js.t
  val of_object : [< 'a Html5_types.object_] elt -> Dom_html.objectElement Js.t
  val of_param : [< Html5_types.param] elt -> Dom_html.paramElement Js.t
  val of_area : [< Html5_types.area] elt -> Dom_html.areaElement Js.t
  val of_map : [< 'a Html5_types.map] elt -> Dom_html.mapElement Js.t
  val of_script : [< Html5_types.script] elt -> Dom_html.scriptElement Js.t
  val of_embed : [< Html5_types.embed] elt -> Dom_html.embedElement Js.t
  val of_td : [< Html5_types.td | Html5_types.td ] elt -> Dom_html.tableCellElement Js.t
  val of_tr : [< Html5_types.tr] elt -> Dom_html.tableRowElement Js.t
  val of_col : [< Html5_types.col] elt -> Dom_html.tableColElement Js.t
  val of_tfoot : [< Html5_types.tfoot] elt -> Dom_html.tableSectionElement Js.t
  val of_thead : [< Html5_types.thead] elt -> Dom_html.tableSectionElement Js.t
  val of_tbody : [< Html5_types.tbody] elt -> Dom_html.tableSectionElement Js.t
  val of_caption : [< Html5_types.caption] elt -> Dom_html.tableCaptionElement Js.t
  val of_table : [< Html5_types.table] elt -> Dom_html.tableElement Js.t
  val of_canvas : [< 'a Html5_types.canvas] elt -> Dom_html.canvasElement Js.t
  val of_iframe : [< Html5_types.iframe] elt -> Dom_html.iFrameElement Js.t
  val of_audio : [< 'a Html5_types.audio_interactive ] elt -> Dom_html.audioElement Js.t
  val of_video : [< 'a Html5_types.video_interactive ] elt -> Dom_html.videoElement Js.t

  (* Dom_html.headingElement *)

  val of_h1 : Html5_types.heading elt -> Dom_html.headingElement Js.t
  val of_h2 : Html5_types.heading elt -> Dom_html.headingElement Js.t
  val of_h3 : Html5_types.heading elt -> Dom_html.headingElement Js.t
  val of_h4 : Html5_types.heading elt -> Dom_html.headingElement Js.t
  val of_h5 : Html5_types.heading elt -> Dom_html.headingElement Js.t
  val of_h6 : Html5_types.heading elt -> Dom_html.headingElement Js.t

  (* Dom_html.element *)

  val of_abbr : [> Html5_types.abbr] elt -> Dom_html.element Js.t
  val of_address : [> Html5_types.address ] elt -> Dom_html.element Js.t
  val of_article : [> Html5_types.article] elt -> Dom_html.element Js.t
  val of_aside : [> Html5_types.aside] elt -> Dom_html.element Js.t
  val of_b : [> Html5_types.b] elt -> Dom_html.element Js.t
  val of_bdo : [> Html5_types.bdo] elt -> Dom_html.element Js.t
  val of_cite : [> Html5_types.cite] elt -> Dom_html.element Js.t
  val of_code : [> Html5_types.code] elt -> Dom_html.element Js.t
  val of_colgroup : [> Html5_types.colgroup] elt -> Dom_html.element Js.t
  val of_command : [> Html5_types.command] elt -> Dom_html.element Js.t
  val of_datalist : [> Html5_types.datalist] elt -> Dom_html.element Js.t
  val of_dd : [> Html5_types.dd] elt -> Dom_html.element Js.t
  val of_details : [> Html5_types.details] elt -> Dom_html.element Js.t
  val of_dfn : [> Html5_types.dfn] elt -> Dom_html.element Js.t
  val of_dt : [> Html5_types.dt] elt -> Dom_html.element Js.t
  val of_em : [> Html5_types.em] elt -> Dom_html.element Js.t
  val of_embed : [> Html5_types.embed] elt -> Dom_html.element Js.t
  val of_figcaption : [> Html5_types.figcaption] elt -> Dom_html.element Js.t
  val of_figure : [> Html5_types.figure] elt -> Dom_html.element Js.t
  val of_footer : [> Html5_types.footer] elt -> Dom_html.element Js.t
  val of_header : [> Html5_types.header] elt -> Dom_html.element Js.t
  val of_hgroup : [> Html5_types.hgroup] elt -> Dom_html.element Js.t
  val of_i : [> Html5_types.i] elt -> Dom_html.element Js.t
  val of_kbd : [> Html5_types.kbd] elt -> Dom_html.element Js.t
  val of_keygen : [> Html5_types.keygen] elt -> Dom_html.element Js.t
  val of_mark : [> Html5_types.mark] elt -> Dom_html.element Js.t
  val of_menu : [> Html5_types.menu] elt -> Dom_html.element Js.t
  val of_meter : [> Html5_types.meter] elt -> Dom_html.element Js.t
  val of_nav : [> Html5_types.nav] elt -> Dom_html.element Js.t
  val of_noscript : [> Html5_types.noscript] elt -> Dom_html.element Js.t
  val of_output : [> Html5_types.output_elt] elt -> Dom_html.element Js.t
  val of_progress : [> Html5_types.progress] elt -> Dom_html.element Js.t
  val of_q : [> Html5_types.q] elt -> Dom_html.element Js.t
  val of_rp : [> Html5_types.rp] elt -> Dom_html.element Js.t
  val of_rt : [> Html5_types.rt] elt -> Dom_html.element Js.t
  val of_ruby : [> Html5_types.ruby] elt -> Dom_html.element Js.t
  val of_samp : [> Html5_types.samp] elt -> Dom_html.element Js.t
  val of_section : [> Html5_types.section] elt -> Dom_html.element Js.t
  val of_small : [> Html5_types.small] elt -> Dom_html.element Js.t
  val of_source : [> Html5_types.source] elt -> Dom_html.element Js.t
  val of_span : [> Html5_types.span] elt -> Dom_html.element Js.t
  val of_strong : [> Html5_types.strong] elt -> Dom_html.element Js.t
  val of_sub : [> Html5_types.sub] elt -> Dom_html.element Js.t
  val of_summary : [> Html5_types.summary] elt -> Dom_html.element Js.t
  val of_sup : [> Html5_types.sup] elt -> Dom_html.element Js.t
  val of_th : [> Html5_types.th] elt -> Dom_html.element Js.t
  val of_time : [> Html5_types.time] elt -> Dom_html.element Js.t
  val of_u : [> Html5_types.u] elt -> Dom_html.element Js.t
  val of_var : [> Html5_types.var] elt -> Dom_html.element Js.t
  val of_wbr : [> Html5_types.wbr] elt -> Dom_html.element Js.t
end
